import discord
from discord.ext import commands, tasks
from discord.ui import Button, View, Select, Modal, TextInput
import aiohttp
import asyncio
import random
import string
import json
import os
from datetime import datetime, timedelta
import re

# ==================== CẤU HÌNH ====================
intents = discord.Intents.default()
intents.message_content = True
intents.members = True

bot = commands.Bot(command_prefix=['!', '.', '?'], intents=intents, help_command=None)

# ==================== DATABASE CHÍNH ====================
# Lưu trữ tất cả dữ liệu bot

# 1. KEY EXECUTOR (10 CÁI)
EXECUTOR_KEYS = {
    "delta": {
        "name": "📱 Delta Executor",
        "keys": ["Delta2024", "DeltaVIP", "DeltaPro", "DeltaKey2025"],
        "how": "✅ Mở app Delta → Nhấn 'Get Key'\n✅ Hoàn thành verification (Linkvertise)\n✅ Copy key và dán vào app\n✅ Key hết hạn sau 24h",
        "link": "https://deltaexecutor.net",
        "platform": "iOS/Android/Windows",
        "version": "2.6.8",
        "color": 0x00FF00
    },
    "arceus": {
        "name": "⚡ Arceus X",
        "keys": ["Arceus2024", "ArceusVIP", "ArceusPro", "ArceusXKey"],
        "how": "✅ Mở app Arceus X → Nhấn 'Get Key'\n✅ Hoàn thành verification\n✅ Copy key và kích hoạt\n✅ Key có hạn 24-48h",
        "link": "https://arceusx.com",
        "platform": "Android",
        "version": "3.2.1",
        "color": 0xFF0000
    },
    "fluxus": {
        "name": "🔥 Fluxus",
        "keys": ["Fluxus2024", "FluxusPro", "FluxVIP", "FluxKey"],
        "how": "✅ Truy cập fluxus.gg/key\n✅ Nhấn 'Get Key'\n✅ Xem quảng cáo 30s\n✅ Copy key và dán vào app\n✅ Key mới mỗi ngày",
        "link": "https://fluxus.gg",
        "platform": "PC/Mobile",
        "version": "3.5.0",
        "color": 0xFFA500
    },
    "krnl": {
        "name": "⚡ KRNL",
        "keys": ["KRNL2024", "KRNLVIP", "KRNLPro", "KRNLKey"],
        "how": "✅ Truy cập krnl.gg/key\n✅ Nhấn 'Get Key'\n✅ Xem quảng cáo Linkvertise\n✅ Copy key và dán vào KRNL\n✅ Key hết hạn sau 24h",
        "link": "https://krnl.gg",
        "platform": "Windows",
        "version": "2.8.0",
        "color": 0x0000FF
    },
    "synapse": {
        "name": "💎 Synapse X",
        "keys": ["SynapseVIP", "Synapse2024", "SynapsePro", "SynapseX"],
        "how": "✅ Mua bản quyền tại synapsex.com\n✅ Key gửi qua email\n✅ Vĩnh viễn không hết hạn",
        "link": "https://synapsex.com",
        "platform": "Windows",
        "version": "3.0.0",
        "color": 0x9933FF
    },
    "scriptware": {
        "name": "📦 Script-Ware",
        "keys": ["SWVIP", "ScriptWare2024", "SWPro"],
        "how": "✅ Mua tại script-ware.com\n✅ Key gửi qua Discord\n✅ Hạn 30 ngày",
        "link": "https://script-ware.com",
        "platform": "Windows",
        "version": "2.5.0",
        "color": 0xFF66B2
    },
    "electron": {
        "name": "⚛️ Electron",
        "keys": ["Electron2024", "ElectronVIP", "EPro"],
        "how": "✅ electronhub.org/key\n✅ Nhấn 'Generate Key'\n✅ Copy key và dán vào app\n✅ Hạn 12 giờ",
        "link": "https://electronhub.org",
        "platform": "PC",
        "version": "1.9.0",
        "color": 0x00FFFF
    },
    "vega": {
        "name": "🌟 Vega X",
        "keys": ["Vega2024", "VegaVIP", "VegaXPro"],
        "how": "✅ vegax.gg/key\n✅ Nhấn 'Get Free Key'\n✅ Xem quảng cáo\n✅ Hạn 6 giờ",
        "link": "https://vegax.gg",
        "platform": "PC",
        "version": "2.1.0",
        "color": 0xFFD700
    },
    "oxygen": {
        "name": "💨 Oxygen U",
        "keys": ["Oxygen2024", "O2VIP", "O2Pro"],
        "how": "✅ oxygenu.gg/key\n✅ Join Discord\n✅ Gõ !key trong server\n✅ Hạn 12 giờ",
        "link": "https://oxygenu.gg",
        "platform": "PC",
        "version": "3.0.0",
        "color": 0x87CEEB
    },
    "cryptic": {
        "name": "🔮 Cryptic",
        "keys": ["Cryptic2024", "CryVIP", "CryPro"],
        "how": "✅ cryptic.studio/key\n✅ Nhấn 'Get Key'\n✅ Hoàn thành captcha\n✅ Hạn 24 giờ",
        "link": "https://cryptic.studio",
        "platform": "PC",
        "version": "2.3.0",
        "color": 0x9400D3
    }
}

# 2. KEY SCRIPT (20 CÁI)
SCRIPT_KEYS = {
    "redz": {
        "name": "🔥 Redz Hub",
        "keys": ["RedzFree", "RedzVIP", "Redz2026"],
        "how": "✅ Redz Hub thường keyless\n✅ Bản VIP: discord.gg/redz",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/main/RedzHub.lua"))()',
        "type": "Auto Farm",
        "update": "2 ngày trước",
        "color": 0xFF5733
    },
    "kaitun": {
        "name": "⚡ Kaitun Hub",
        "keys": ["KaitunVIP2024", "KaitunPro", "KaitunElite"],
        "how": "✅ Join Discord: discord.gg/kaitun\n✅ Vào channel #key\n✅ Gõ !key",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/KaitunHub/BloxFruits/main/Kaitun.lua"))()',
        "type": "Auto Farm",
        "update": "1 ngày trước",
        "color": 0x33FF57
    },
    "hoho": {
        "name": "🎋 HoHo Hub",
        "keys": ["HoHoFree", "HoHoVIP", "HoHo2026"],
        "how": "✅ HoHo Hub keyless\n✅ Bản VIP: hohohub.com/key",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()',
        "type": "Fruit Sniper",
        "update": "3 ngày trước",
        "color": 0x33FFF5
    },
    "banana": {
        "name": "🍌 Banana Hub",
        "keys": ["BananaFree", "BananaVIP", "Banana2026"],
        "how": "✅ Bản free keyless\n✅ Bản Premium: discord.gg/banana",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Nghia11n/Banana-Hub/main/bananahub.lua"))()',
        "type": "Boss Farm",
        "update": "5 ngày trước",
        "color": 0xFFD700
    },
    "speed": {
        "name": "⚡ Speed Hub X",
        "keys": ["SpeedFree", "SpeedPro", "Speed2026"],
        "how": "✅ speedhub.com/key\n✅ Keyless bản free",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()',
        "type": "Tốc độ cao",
        "update": "2 ngày trước",
        "color": 0x00FFFF
    },
    "quantum": {
        "name": "⚛️ Quantum Onyx",
        "keys": ["QuantumVIP", "Quantum2026", "QuantumPro"],
        "how": "✅ Join Discord: discord.gg/quantum\n✅ Vào channel #key",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/FlazhGG/QTONYX/refs/heads/main/NextGeneration.lua"))()',
        "type": "An toàn",
        "update": "1 ngày trước",
        "color": 0x9933FF
    },
    "teddy": {
        "name": "🧸 Teddy Hub",
        "keys": ["TeddyFree", "TeddyPro", "Teddy2026"],
        "how": "✅ teddyhub.com/key\n✅ Rất nhẹ, phù hợp PC yếu",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()',
        "type": "Nhẹ, nhanh",
        "update": "4 ngày trước",
        "color": 0xFF99CC
    },
    "raito": {
        "name": "🎯 Raito Hub",
        "keys": ["RaitoFree", "RaitoVIP", "Raito2026"],
        "how": "✅ raitohub.com/key\n✅ Chuyên PvP",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()',
        "type": "PvP",
        "update": "3 ngày trước",
        "color": 0xFF3333
    },
    "zis": {
        "name": "📦 Zis Hub",
        "keys": ["ZisFree", "ZisVIP", "Zis2026"],
        "how": "✅ Keyless - dùng trực tiếp",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Zis/refs/heads/main/ZisRobloxHub"))()',
        "type": "Đa năng",
        "update": "6 ngày trước",
        "color": 0x808080
    },
    "rubu": {
        "name": "💎 Rubu Hub",
        "keys": ["RubuVIP2024", "RubuPro", "RubuKRNL"],
        "how": "✅ rubuhub.com/key\n✅ Nhập mã: BLXFRUIT",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RubuHub/BloxFruits/main/RubuV5.lua"))()',
        "type": "Auto Farm",
        "update": "2 ngày trước",
        "color": 0x9933FF
    },
    "xero": {
        "name": "❌ Xero Hub",
        "keys": ["XeroFree", "XeroVIP", "Xero2026"],
        "how": "✅ xerohub.com/key",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/XeroHub/BloxFruits/main/Xero.lua"))()',
        "type": "Auto Farm",
        "update": "5 ngày trước",
        "color": 0x000000
    },
    "volcano": {
        "name": "🌋 Volcano Hub",
        "keys": ["VolcanoFree", "VolcanoVIP", "Volcano2026"],
        "how": "✅ volcanohub.com/key",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/VolcanoHub/BloxFruits/main/Volcano.lua"))()',
        "type": "Boss Farm",
        "update": "3 ngày trước",
        "color": 0xFF4500
    },
    "wazure": {
        "name": "🔷 W-Azure Hub",
        "keys": ["WAzureVIP", "Azure2024", "AzurePro"],
        "how": "✅ bit.ly/wazurekey\n✅ Xem quảng cáo 30s",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/WAzureHub/BloxFruits/main/WAzure.lua"))()',
        "type": "Auto Farm",
        "update": "1 ngày trước",
        "color": 0x1E90FF
    },
    "blue": {
        "name": "🔵 Blue Hub",
        "keys": ["BlueFree", "BlueVIP", "Blue2026"],
        "how": "✅ bluehub.net/key\n✅ Nhập mã: BLUEFRUIT",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/BlueHub/BloxFruits/main/Blue.lua"))()',
        "type": "Auto Farm",
        "update": "4 ngày trước",
        "color": 0x0000FF
    },
    "tuanios": {
        "name": "📱 Tuấn iOS Hub",
        "keys": ["TuanIOS2024", "iOSVIP", "TuanPro"],
        "how": "✅ Group FB: fb.com/groups/tuanios",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/TuanIOS/BloxFruits/main/TuanIOS.lua"))()',
        "type": "iOS",
        "update": "2 ngày trước",
        "color": 0xC0C0C0
    },
    "tnt": {
        "name": "💣 TNT Hub",
        "keys": ["TNTFree", "TNTVIP", "TNT2026"],
        "how": "✅ tnthub.com/key",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/TNTHub/BloxFruits/main/TNT.lua"))()',
        "type": "Auto Farm",
        "update": "7 ngày trước",
        "color": 0x8B4513
    },
    "ldt": {
        "name": "📦 LDT Hub",
        "keys": ["LDTFree", "LDTVIP", "LDT2026"],
        "how": "✅ ldthub.com/key",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/LDTHub/BloxFruits/main/LDT.lua"))()',
        "type": "Auto Farm",
        "update": "5 ngày trước",
        "color": 0x2F4F4F
    },
    "fixlag": {
        "name": "⚙️ Fix Lag",
        "keys": ["FixLag", "FPSBoost", "NoLag"],
        "how": "✅ Keyless - dùng trực tiếp",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/FixLagRoblox/FPS/main/FixLag.lua"))()',
        "type": "Utility",
        "update": "10 ngày trước",
        "color": 0x808080
    }
}

# 3. DATABASE TRÁI ÁC QUỶ
FRUIT_PRICES = {
    "dragon": {"name": "🐉 Dragon", "price": "50M - 60M Beli", "rarity": "Legendary", "stock": "Hiếm"},
    "leopard": {"name": "🐆 Leopard", "price": "40M - 45M Beli", "rarity": "Legendary", "stock": "Hiếm"},
    "dough": {"name": "🍩 Dough", "price": "30M - 35M Beli", "rarity": "Legendary", "stock": "Trung bình"},
    "venom": {"name": "🐍 Venom", "price": "25M - 30M Beli", "rarity": "Legendary", "stock": "Trung bình"},
    "spirit": {"name": "👻 Spirit", "price": "25M - 28M Beli", "rarity": "Legendary", "stock": "Trung bình"},
    "control": {"name": "🎮 Control", "price": "22M - 25M Beli", "rarity": "Legendary", "stock": "Nhiều"},
    "buddha": {"name": "🧘 Buddha", "price": "12M - 15M Beli", "rarity": "Rare", "stock": "Rất nhiều"},
    "magma": {"name": "🌋 Magma", "price": "8M - 10M Beli", "rarity": "Rare", "stock": "Nhiều"},
    "ice": {"name": "❄️ Ice", "price": "5M - 7M Beli", "rarity": "Uncommon", "stock": "Rất nhiều"},
    "flame": {"name": "🔥 Flame", "price": "4M - 6M Beli", "rarity": "Uncommon", "stock": "Rất nhiều"},
    "dark": {"name": "🌑 Dark", "price": "3M - 5M Beli", "rarity": "Uncommon", "stock": "Nhiều"},
    "light": {"name": "✨ Light", "price": "2M - 3M Beli", "rarity": "Common", "stock": "Rất nhiều"}
}

# 4. HƯỚNG DẪN FARM
FARM_GUIDES = {
    "1-100": "🌾 **Cấp 1-100:** Farm tại Starter Island, đánh băng hải tặc",
    "100-200": "🏝️ **Cấp 100-200:** Đến Jungle, farm gorilla và python",
    "200-300": "🏖️ **Cấp 200-300:** Đến Sky Island, farm God's Guard",
    "300-400": "☁️ **Cấp 300-400:** Farm Snow Village, đánh Yeti",
    "400-500": "❄️ **Cấp 400-500:** Đến Ice Castle, farm Frozen Warrior",
    "500-600": "🏯 **Cấp 500-600:** Farm tại Castle on the Sea",
    "600-700": "🌊 **Cấp 600-700:** Đến Fishman Island, farm Sea Monster",
    "700-800": "🐟 **Cấp 700-800:** Farm tại Mansion, đánh boss",
    "800-900": "🏰 **Cấp 800-900:** Đến Floating Turtle, farm NPC",
    "900-1000": "🐢 **Cấp 900-1000:** Farm tại Haunted Castle",
    "1000-1100": "👻 **Cấp 1000-1100:** Đến Ice Cream Island",
    "1100-1200": "🍦 **Cấp 1100-1200:** Farm tại Cursed Ship",
    "1200-1300": "🚢 **Cấp 1200-1300:** Đến Peanut Island",
    "1300-1400": "🥜 **Cấp 1300-1400:** Farm tại Chicken Island",
    "1400-1500": "🐔 **Cấp 1400-1500:** Đến Hydra Island - endgame"
}

# ==================== CLASS TẠO KEY PRO ====================
class ProKeyGenerator:
    @staticmethod
    def generate_vip_key(prefix="VIP", length=12):
        """Tạo key VIP có định dạng đẹp"""
        chars = string.ascii_uppercase + string.digits
        part1 = ''.join(random.choices(chars, k=4))
        part2 = ''.join(random.choices(chars, k=4))
        part3 = ''.join(random.choices(chars, k=4))
        return f"{prefix}-{part1}-{part2}-{part3}"
    
    @staticmethod
    def generate_fruit_key():
        """Tạo key theo tên trái cây"""
        fruits = ["DRAGON", "BUDDHA", "MAGMA", "ICE", "FLAME", "DARK", "LIGHT"]
        prefix = random.choice(fruits)
        number = ''.join(random.choices(string.digits, k=6))
        return f"{prefix}-{number}"
    
    @staticmethod
    def generate_executor_key(executor_name):
        """Tạo key riêng cho từng executor"""
        exec_codes = {
            "delta": "DLT",
            "arceus": "ARC",
            "fluxus": "FLX",
            "krnl": "KRN",
            "synapse": "SNP"
        }
        code = exec_codes.get(executor_name.lower(), "KEY")
        return f"{code}-{''.join(random.choices(string.ascii_uppercase + string.digits, k=8))}"

# ==================== CLASS TÌM KIẾM WEB ====================
class WebSearchEngine:
    def __init__(self):
        self.session = None
        self.sources = [
            "github.com",
            "pastebin.com",
            "scriptblox.com",
            "robloxscripts.com"
        ]
    
    async def get_session(self):
        if not self.session:
            self.session = aiohttp.ClientSession()
        return self.session
    
    async def close(self):
        if self.session:
            await self.session.close()
    
    async def search_github(self, query):
        """Tìm script trên GitHub"""
        try:
            session = await self.get_session()
            search_url = f"https://api.github.com/search/code?q={query}+extension:lua+blox+fruits"
            
            headers = {"Accept": "application/vnd.github.v3+json"}
            async with session.get(search_url, headers=headers) as resp:
                if resp.status == 200:
                    data = await resp.json()
                    results = []
                    for item in data.get('items', [])[:3]:
                        repo = item['repository']['full_name']
                        path = item['path']
                        raw_url = f"https://raw.githubusercontent.com/{repo}/main/{path}"
                        results.append({
                            "name": path,
                            "url": raw_url,
                            "repo": repo,
                            "score": item['score']
                        })
                    return results
            return []
        except:
            return []

# ==================== MODAL NÂNG CAO ====================
class ScriptRequestModal(Modal, title="🔍 YÊU CẦU SCRIPT MỚI"):
    def __init__(self):
        super().__init__()
        self.script_name = TextInput(
            label="📝 Tên script cần tìm:",
            placeholder="VD: redz, kaitun, hoho...",
            required=True,
            max_length=50
        )
        self.add_item(self.script_name)
        
        self.description = TextInput(
            label="📌 Mô tả (không bắt buộc):",
            placeholder="VD: Cần script farm nhanh...",
            required=False,
            max_length=200,
            style=discord.TextStyle.paragraph
        )
        self.add_item(self.description)
    
    async def on_submit(self, interaction: discord.Interaction):
        name = self.script_name.value
        desc = self.description.value or "Không có mô tả"
        
        embed = discord.Embed(
            title="✅ ĐÃ GHI NHẬN YÊU CẦU",
            description=f"**Script:** {name}\n**Mô tả:** {desc}",
            color=discord.Color.green()
        )
        embed.set_footer(text="Admin sẽ xem xét và thêm vào database sớm nhất!")
        
        await interaction.response.send_message(embed=embed, ephemeral=True)

class FruitPriceModal(Modal, title="🍎 TRA CỨU GIÁ TRÁI"):
    def __init__(self):
        super().__init__()
        self.fruit_name = TextInput(
            label="📝 Tên trái cần tra:",
            placeholder="VD: dragon, leopard, dough...",
            required=True
        )
        self.add_item(self.fruit_name)
    
    async def on_submit(self, interaction: discord.Interaction):
        name = self.fruit_name.value.lower()
        
        if name in FRUIT_PRICES:
            fruit = FRUIT_PRICES[name]
            embed = discord.Embed(
                title=fruit['name'],
                color=discord.Color.gold()
            )
            embed.add_field(name="💰 Giá", value=fruit['price'], inline=True)
            embed.add_field(name="⭐ Độ hiếm", value=fruit['rarity'], inline=True)
            embed.add_field(name="📦 Tình trạng", value=fruit['stock'], inline=True)
            await interaction.response.send_message(embed=embed)
        else:
            # Tìm gần đúng
            suggestions = [f for f in FRUIT_PRICES.keys() if name in f]
            if suggestions:
                await interaction.response.send_message(f"❌ Không tìm thấy '{name}'. Có phải bạn muốn: {', '.join(suggestions)}?")
            else:
                await interaction.response.send_message(f"❌ Không tìm thấy trái '{name}'")

# ==================== SELECT MENU PRO ====================
class ExecutorCategorySelect(Select):
    def __init__(self):
        options = [
            discord.SelectOption(label="📱 Mobile", description="Delta, Arceus X", emoji="📱", value="mobile"),
            discord.SelectOption(label="💻 PC", description="KRNL, Synapse, Fluxus", emoji="💻", value="pc"),
            discord.SelectOption(label="🌐 All", description="Tất cả executor", emoji="🌐", value="all")
        ]
        super().__init__(placeholder="🔧 CHỌN NỀN TẢNG...", options=options)
    
    async def callback(self, interaction: discord.Interaction):
        platform = self.values[0]
        
        embed = discord.Embed(
            title=f"⚙️ EXECUTOR {platform.upper()}",
            color=discord.Color.blue()
        )
        
        for key, exec in EXECUTOR_KEYS.items():
            if platform == "all" or (platform == "mobile" and "iOS" in exec['platform']) or (platform == "pc" and "Windows" in exec['platform']):
                embed.add_field(
                    name=exec['name'],
                    value=f"🔑 `{exec['keys'][0]}`\n📱 {exec['platform']}\n⚡ v{exec['version']}",
                    inline=True
                )
        
        view = View()
        view.add_item(ExecutorDetailSelect())
        vie
# ==================== CÁC LỆNH DISCORD PRO ====================
@bot.command()
async def ping(ctx):
    """Kiểm tra độ trễ bot"""
    start = datetime.now()
    msg = await ctx.send("🏓 Đang đo độ trễ...")
    end = datetime.now()
    latency = (end - start).microseconds / 1000
    await msg.edit(content=f"🏓 Pong! **{latency}ms** | Bot latency: **{round(bot.latency * 1000)}ms**")

@bot.command()
async def stats(ctx):
    """Xem thống kê chi tiết"""
    total_keys_script = sum(len(s['keys']) for s in SCRIPT_KEYS.values())
    total_keys_exec = sum(len(e['keys']) for e in EXECUTOR_KEYS.values())
    
    embed = discord.Embed(
        title="📊 THỐNG KÊ CHI TIẾT",
        color=discord.Color.blue()
    )
    embed.add_field(name="⚙️ Executor", value=len(EXECUTOR_KEYS), inline=True)
    embed.add_field(name="📜 Script", value=len(SCRIPT_KEYS), inline=True)
    embed.add_field(name="🍎 Trái", value=len(FRUIT_PRICES), inline=True)
    embed.add_field(name="📋 Hướng dẫn", value=len(FARM_GUIDES), inline=True)
    embed.add_field(name="🔑 Key script", value=total_keys_script, inline=True)
    embed.add_field(name="🔑 Key exec", value=total_keys_exec, inline=True)
    embed.add_field(name="⏰ Uptime", value="24/7", inline=True)
    embed.add_field(name="📦 Version", value="Pro 3.0", inline=True)
    
    await ctx.send(embed=embed)

# ==================== PHẦN NÓI CHUYỆN ====================

@bot.event
async def on_message(message):
    # Bỏ qua tin nhắn của chính bot
    if message.author == bot.user:
        return
    
    # Lấy nội dung tin nhắn
    content = message.content.lower()
    
    # Trả lời theo từ khóa
    if "hello" in content or "hi" in content or "chào" in content:
        await message.channel.send(f"👋 Chào bạn {message.author.name}!")
    
    elif "có khỏe không" in content or "khỏe ko" in content:
        await message.channel.send("🤖 Mình khỏe, cảm ơn bạn! Còn bạn thì sao?")
    
    elif "cảm ơn" in content:
        await message.channel.send("🙏 Không có gì! Luôn sẵn sàng giúp đỡ bạn.")
    
    elif "tạm biệt" in content or "bye" in content:
        await message.channel.send("👋 Tạm biệt! Hẹn gặp lại!")
    
    elif "bạn tên gì" in content or "tên bạn là gì" in content:
        await message.channel.send(f"🤖 Mình là **{bot.user.name}**, trợ lý của bạn đây!")
    
    elif "làm gì" in content or "chức năng" in content:
        await message.channel.send("📋 Mình có thể:\n- Lấy key executor (!key)\n- Kiểm tra ping (!ping)\n- Trò chuyện với bạn\n- Và nhiều hơn nữa!")
    
    # Tiếp tục xử lý các lệnh ! (QUAN TRỌNG!)
    await bot.process_commands(message)

# ==================== CHẠY BOT ====================
TOKEN = "MTQ3OTA0MTk5NjkzNjA1MjkwMQ.GkaERE.RaqxrHxmOLnGsNrXRwkukX3KbWmUnVYxxaOcy4"  # 👈 DÒNG NÀY ĐÂY! - SỬA CHỖ NÀY!
bot.run(TOKEN)  # 👈 DÒNG CUỐI CÙNG THẬT SỰ
