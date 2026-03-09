import discord
from discord.ext import commands
from discord.ui import Button, View, Select, Modal, TextInput
import aiohttp
import asyncio
import random
import string
from datetime import datetime
import os
from bs4 import BeautifulSoup

# ==================== CẤU HÌNH ====================
intents = discord.Intents.default()
intents.message_content = True
intents.members = True

bot = commands.Bot(command_prefix=['!', '.'], intents=intents, help_command=None)

# ==================== DATABASE SCRIPT BLOX FRUITS ====================
SCRIPTS = {
    "redz": {
        "name": "🔥 Redz Hub",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/main/RedzHub.lua"))()',
        "key": "Không cần key",
        "category": "Auto Farm",
        "likes": "15.2K",
        "updated": "3 ngày trước"
    },
    "kaitun": {
        "name": "⚡ Kaitun Hub",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/KaitunHub/BloxFruits/main/Kaitun.lua"))()',
        "key": "Cần key: KaitunVIP",
        "category": "Auto Farm",
        "likes": "12.8K",
        "updated": "1 ngày trước"
    },
    "hoho": {
        "name": "🎋 HoHo Hub",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()',
        "key": "Không cần key",
        "category": "Fruit Sniper",
        "likes": "10.5K",
        "updated": "5 ngày trước"
    },
    "banana": {
        "name": "🍌 Banana Hub",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/BananaHub/BloxFruits/main/BananaHub.lua"))()',
        "key": "Không cần key",
        "category": "Boss Farm",
        "likes": "9.7K",
        "updated": "2 ngày trước"
    },
    "zis": {
        "name": "📦 Zis Hub",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Zis/refs/heads/main/ZisRobloxHub"))()',
        "key": "Không cần key",
        "category": "Đa năng",
        "likes": "8.3K",
        "updated": "1 tuần trước"
    },
    "rubu": {
        "name": "💎 Rubu Hub",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RubuHub/BloxFruits/main/RubuV5.lua"))()',
        "key": "Cần key: RubuVIP",
        "category": "Auto Farm",
        "likes": "7.9K",
        "updated": "4 ngày trước"
    },
    "speed": {
        "name": "⚡ Speed Hub X",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/SpeedHub/BloxFruits/main/Speed.lua"))()',
        "key": "Không cần key",
        "category": "Tốc độ cao",
        "likes": "6.5K",
        "updated": "6 ngày trước"
    },
    "quantum": {
        "name": "⚛️ Quantum Onyx",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/FlazhGG/QTONYX/refs/heads/main/NextGeneration.lua"))()',
        "key": "Cần key: QuantumVIP",
        "category": "An toàn",
        "likes": "5.2K",
        "updated": "2 tuần trước"
    }
}

# ==================== DATABASE KEY EXECUTOR ====================
EXECUTOR_KEYS = {
    "delta": {
        "name": "📱 Delta Executor",
        "keys": ["Delta2024", "DeltaVIP", "DeltaPro", "DeltaKey2025"],
        "how": "✅ Mở app Delta → Nhấn 'Get Key'\n✅ Hoàn thành verification\n✅ Copy key và dán vào app\n✅ Key hết hạn sau 24h",
        "platform": "iOS/Android/Windows",
        "version": "2.6.8",
        "download": "https://deltaexecutor.net"
    },
    "arceus": {
        "name": "⚡ Arceus X",
        "keys": ["Arceus2024", "ArceusVIP", "ArceusPro", "ArceusXKey"],
        "how": "✅ Mở app Arceus X → Nhấn 'Get Key'\n✅ Hoàn thành verification\n✅ Copy key và kích hoạt\n✅ Key có hạn 24-48h",
        "platform": "Android",
        "version": "3.2.1",
        "download": "https://arceusx.com"
    },
    "fluxus": {
        "name": "🔥 Fluxus",
        "keys": ["Fluxus2024", "FluxusPro", "FluxVIP", "FluxKey"],
        "how": "✅ Truy cập fluxus.gg/key\n✅ Nhấn 'Get Key'\n✅ Xem quảng cáo 30s\n✅ Copy key và dán vào app",
        "platform": "PC/Mobile",
        "version": "3.5.0",
        "download": "https://fluxus.gg"
    },
    "krnl": {
        "name": "⚡ KRNL",
        "keys": ["KRNL2024", "KRNLVIP", "KRNLPro", "KRNLKey"],
        "how": "✅ Truy cập krnl.gg/key\n✅ Nhấn 'Get Key'\n✅ Xem quảng cáo Linkvertise\n✅ Copy key và dán vào KRNL",
        "platform": "Windows",
        "version": "2.8.0",
        "download": "https://krnl.gg"
    }
}

# ==================== DATABASE KEY SCRIPT ====================
SCRIPT_KEYS = {
    "kaitun": {
        "name": "⚡ Kaitun Hub",
        "keys": ["KaitunVIP2024", "KaitunPro", "KaitunElite"],
        "how": "✅ Join Discord: discord.gg/kaitun\n✅ Vào channel #key\n✅ Gõ !key để nhận",
        "url": "https://raw.githubusercontent.com/KaitunHub/BloxFruits/main/Kaitun.lua",
        "expire": "7 ngày"
    },
    "rubu": {
        "name": "💎 Rubu Hub V5",
        "keys": ["RubuVIP2024", "RubuKRNL", "RubuLegend"],
        "how": "✅ Link: rubuhub.com/key\n✅ Nhập mã: BLXFRUIT",
        "url": "https://raw.githubusercontent.com/RubuHub/BloxFruits/main/RubuV5.lua",
        "expire": "30 ngày"
    },
    "quantum": {
        "name": "⚛️ Quantum Hub",
        "keys": ["QuantumVIP", "Quantum2024", "QuantumPro"],
        "how": "✅ Vào server VIP\n✅ Gõ !claim key\n✅ Bot sẽ DM bạn",
        "url": "https://raw.githubusercontent.com/QuantumHub/BloxFruits/main/Quantum.lua",
        "expire": "Vĩnh viễn"
    }
}
# ==================== CLASS TÌM KIẾM WEB ====================
class WebScriptSearcher:
    def __init__(self):
        self.session = None
    
    async def get_session(self):
        if not self.session:
            self.session = aiohttp.ClientSession()
        return self.session
    
    async def close(self):
        if self.session:
            await self.session.close()
    
    async def search_scriptblox(self, query):
        try:
            session = await self.get_session()
            url = f"https://scriptblox.com/api/script/search?q={query}&game=blox-fruits&page=1&limit=5"
            async with session.get(url) as resp:
                if resp.status == 200:
                    data = await resp.json()
                    results = []
                    for script in data.get('result', {}).get('scripts', []):
                        results.append({
                            'title': script.get('title', 'Không có tên'),
                            'script': script.get('code', '')[:200] + '...',
                            'views': script.get('views', 0),
                            'likes': script.get('likes', 0),
                            'key_required': script.get('isKey', False),
                            'url': f"https://scriptblox.com/script/{script.get('slug', '')}",
                            'source': 'ScriptBlox'
                        })
                    return results
            return []
        except:
            return []
    
    async def search_all(self, query):
        return await self.search_scriptblox(query)

# ==================== MODAL TÌM KIẾM ====================
class SearchModal(Modal, title="🔍 TÌM SCRIPT BLOX FRUITS"):
    def __init__(self):
        super().__init__()
        self.query = TextInput(label="📝 Tên script cần tìm:", placeholder="VD: auto farm, fruit, redz...", required=True)
        self.add_item(self.query)
    
    async def on_submit(self, interaction: discord.Interaction):
        await interaction.response.defer()
        query = self.query.value
        
        loading = await interaction.followup.send(f"🔍 Đang tìm **{query}** trên ScriptBlox...")
        
        searcher = WebScriptSearcher()
        results = await searcher.search_all(query)
        await searcher.close()
        
        if not results:
            await loading.edit(content=f"❌ Không tìm thấy script nào cho **{query}**")
            return
        
        embed = discord.Embed(title=f"📦 KẾT QUẢ TÌM: {query}", color=discord.Color.blue())
        for i, res in enumerate(results[:5], 1):
            key_status = "🔑 Cần key" if res['key_required'] else "✅ Free"
            embed.add_field(
                name=f"{i}. {res['title'][:100]}",
                value=f"👁️ {res['views']} lượt xem | ❤️ {res['likes']} thích\n{key_status}\n🔗 [Xem gốc]({res['url']})",
                inline=False
            )
        await loading.edit(content=None, embed=embed)

# ==================== SELECT MENU CHO SCRIPT ====================
class ScriptSelect(Select):
    def __init__(self):
        options = []
        for key, script in SCRIPTS.items():
            emoji = "🔑" if "Cần key" in script['key'] else "✅"
            options.append(discord.SelectOption(
                label=script['name'],
                description=f"{script['category']} | {script['key'][:20]}",
                value=key,
                emoji=emoji
            ))
        super().__init__(placeholder="📜 CHỌN SCRIPT (8 CÁI)", min_values=1, max_values=1, options=options)
    
    async def callback(self, interaction: discord.Interaction):
        selected = self.values[0]
        script = SCRIPTS[selected]
        embed = discord.Embed(title=script['name'], color=discord.Color.green() if "Không cần key" in script['key'] else discord.Color.red())
        embed.add_field(name="📂 Loại", value=script['category'], inline=True)
        embed.add_field(name="👍 Lượt thích", value=script['likes'], inline=True)
        embed.add_field(name="📅 Cập nhật", value=script['updated'], inline=True)
        embed.add_field(name="🔑 Key", value=script['key'], inline=False)
        embed.add_field(name="📜 Script", value=f"```lua\n{script['script'][:300]}...\n```", inline=False)
        await interaction.response.send_message(embed=embed, ephemeral=True)

# ==================== SELECT MENU CHO EXECUTOR ====================
class ExecutorSelect(Select):
    def __init__(self):
        options = []
        for key, exec in EXECUTOR_KEYS.items():
            options.append(discord.SelectOption(
                label=exec['name'],
                description=f"{exec['platform']} | {exec['keys'][0]}",
                value=key,
                emoji="⚙️"
            ))
        super().__init__(placeholder="⚙️ CHỌN EXECUTOR (4 CÁI)", min_values=1, max_values=1, options=options)
    
    async def callback(self, interaction: discord.Interaction):
        selected = self.values[0]
        exec = EXECUTOR_KEYS[selected]
        embed = discord.Embed(title=exec['name'], description=f"📱 {exec['platform']} | v{exec['version']}", color=discord.Color.blue())
        embed.add_field(name="✅ KEY CÓ SẴN", value="\n".join([f"🔑 `{k}`" for k in exec['keys']]), inline=False)
        embed.add_field(name="📌 HƯỚNG DẪN", value=exec['how'], inline=False)
        embed.add_field(name="📥 DOWNLOAD", value=f"[Tải tại đây]({exec['download']})", inline=False)
        await interaction.response.send_message(embed=embed, ephemeral=True)

# ==================== SELECT MENU CHO KEY SCRIPT ====================
class ScriptKeySelect(Select):
    def __init__(self):
        options = []
        for key, script in SCRIPT_KEYS.items():
            options.append(discord.SelectOption(
                label=script['name'],
                description=f"⏰ {script['expire']} | {script['keys'][0]}",
                value=key,
                emoji="🔑"
            ))
        super().__init__(placeholder="🔑 CHỌN SCRIPT LẤY KEY", min_values=1, max_values=1, options=options)
    
    async def callback(self, interaction: discord.Interaction):
        selected = self.values[0]
        script = SCRIPT_KEYS[selected]
        embed = discord.Embed(title=script['name'], description=f"⏰ Hạn sử dụng: {script['expire']}", color=discord.Color.gold())
        embed.add_field(name="✅ KEY CÓ SẴN", value="\n".join([f"🔑 `{k}`" for k in script['keys']]), inline=False)
        embed.add_field(name="📌 HƯỚNG DẪN", value=script['how'], inline=False)
        embed.add_field(name="🔗 LINK SCRIPT", value=f"[Tải tại đây]({script['url']})", inline=False)
        await interaction.response.send_message(embed=embed, ephemeral=True)

# ==================== MENU CHÍNH ====================
class MainMenu(View):
    def __init__(self):
        super().__init__(timeout=None)
        
        # Hàng 1
        btn1 = Button(label="🔍 TÌM SCRIPT WEB", style=discord.ButtonStyle.primary, emoji="🔍", row=0)
        async def f1(interaction):
            await interaction.response.send_modal(SearchModal())
        btn1.callback = f1
        
        btn2 = Button(label="📜 SCRIPT CÓ SẴN", style=discord.ButtonStyle.success, emoji="📚", row=0)
        async def f2(interaction):
            embed = discord.Embed(title="📜 CHỌN SCRIPT (8 CÁI)", color=discord.Color.green())
            await interaction.response.send_message(embed=embed, view=ScriptSelect(), ephemeral=True)
        btn2.callback = f2
        
        # Hàng 2
        btn3 = Button(label="⚙️ KEY EXECUTOR", style=discord.ButtonStyle.primary, emoji="🔧", row=1)
        async def f3(interaction):
            embed = discord.Embed(title="⚙️ CHỌN EXECUTOR (4 CÁI)", color=discord.Color.blue())
            await interaction.response.send_message(embed=embed, view=ExecutorSelect(), ephemeral=True)
        btn3.callback = f3
        
        btn4 = Button(label="🔑 KEY SCRIPT", style=discord.ButtonStyle.danger, emoji="🔑", row=1)
        async def f4(interaction):
            embed = discord.Embed(title="🔑 CHỌN SCRIPT LẤY KEY (3 CÁI)", color=discord.Color.gold())
            await interaction.response.send_message(embed=embed, view=ScriptKeySelect(), ephemeral=True)
        btn4.callback = f4
        
        # Hàng 3
        btn5 = Button(label="🎲 TẠO KEY", style=discord.ButtonStyle.secondary, emoji="🎲", row=2)
        async def f5(interaction):
            key = ''.join(random.choices(string.ascii_uppercase + string.digits, k=12))
            await interaction.response.send_message(f"🎲 **Key ngẫu nhiên:** `FREE-{key}`", ephemeral=True)
        btn5.callback = f5
        
        btn6 = Button(label="📊 THỐNG KÊ", style=discord.ButtonStyle.secondary, emoji="📊", row=2)
        async def f6(interaction):
            embed = discord.Embed(title="📊 THỐNG KÊ BOT", color=discord.Color.blue())
            embed.add_field(name="📜 Script có sẵn", value=len(SCRIPTS), inline=True)
            embed.add_field(name="⚙️ Executor", value=len(EXECUTOR_KEYS), inline=True)
            embed.add_field(name="🔑 Key script", value=len(SCRIPT_KEYS), inline=True)
            embed.add_field(name="🎲 Tổng key", value=sum(len(e['keys']) for e in EXECUTOR_KEYS.values()) + sum(len(s['keys']) for s in SCRIPT_KEYS.values()), inline=True)
            await interaction.response.send_message(embed=embed, ephemeral=True)
        btn6.callback = f6
        
        self.add_item(btn1)
        self.add_item(btn2)
        self.add_item(btn3)
        self.add_item(btn4)
        self.add_item(btn5)
        self.add_item(btn6)

# ==================== LỆNH DISCORD ====================
@bot.command()
async def menu(ctx):
    embed = discord.Embed(
        title="🎮 BLOX FRUITS PRO BOT",
        description=f"📜 {len(SCRIPTS)} Script • ⚙️ {len(EXECUTOR_KEYS)} Executor • 🔑 {len(SCRIPT_KEYS)} Key Script",
        color=discord.Color.purple()
    )
    await ctx.send(embed=embed, view=MainMenu())

@bot.command()
async def get(ctx, *, name):
    name = name.lower()
    if name in SCRIPTS:
        script = SCRIPTS[name]
        await ctx.send(f"**{script['name']}**\n🔑 {script['key']}\n📂 {script['category']}\n```lua\n{script['script']}\n```")
    else:
        await ctx.send(f"❌ Không có script '{name}'. Dùng `!timkiem {name}` để tìm trên web.")

@bot.command(aliases=["search", "find"])
async def timkiem(ctx, *, query):
    msg = await ctx.send(f"🔍 Đang tìm **{query}** trên ScriptBlox...")
    searcher = WebScriptSearcher()
    results = await searcher.search_all(query)
    await searcher.close()
    if not results:
        await msg.edit(content=f"❌ Không tìm thấy script nào cho **{query}**")
        return
    embed = discord.Embed(title=f"📦 KẾT QUẢ TÌM: {query}", color=discord.Color.blue())
    for i, res in enumerate(results[:5], 1):
        key_status = "🔑 Cần key" if res['key_required'] else "✅ Free"
        embed.add_field(name=f"{i}. {res['title'][:100]}", value=f"👁️ {res['views']} | ❤️ {res['likes']} | {key_status}\n🔗 [Xem gốc]({res['url']})", inline=False)
    await msg.edit(content=None, embed=embed)

@bot.command()
async def scriptkey(ctx, name=None):
    if not name:
        msg = "**📜 DANH SÁCH KEY SCRIPT:**\n\n"
        for key, script in SCRIPT_KEYS.items():
            msg += f"• `{key}`: {script['name']} ({script['expire']})\n"
        await ctx.send(msg)
        return
    name = name.lower()
    if name in SCRIPT_KEYS:
        script = SCRIPT_KEYS[name]
        keys = "\n".join([f"🔑 `{k}`" for k in script['keys']])
        await ctx.send(f"**{script['name']}**\n{keys}\n\n{script['how']}\n⏰ Hạn: {script['expire']}")
    else:
        await ctx.send(f"❌ Không có key cho script '{name}'")

@bot.command()
async def ping(ctx):
    start = datetime.now()
    msg = await ctx.send("🏓 Đang đo...")
    end = datetime.now()
    await msg.edit(content=f"🏓 Pong! {round((end-start).microseconds/1000)}ms | Bot: {round(bot.latency * 1000)}ms")

# ==================== NÓI CHUYỆN ====================
@bot.event
async def on_message(message):
    if message.author == bot.user:
        return
    content = message.content.lower()
    
    responses = {
        ("hello", "hi", "chào"): f"👋 Chào bạn {message.author.name}!",
        ("cảm ơn", "thanks"): "🙏 Không có gì!",
        ("tạm biệt", "bye"): "👋 Tạm biệt!",
        ("bạn tên gì",): f"🤖 Mình là {bot.user.name}!",
        ("có script gì",): f"📜 Mình có {len(SCRIPTS)} script: redz, kaitun, hoho, banana, zis, rubu, speed, quantum!",
        ("có key gì",): f"🔑 Key script: kaitun, rubu, quantum | ⚙️ Executor: delta, arceus, fluxus, krnl"
    }
    
    for keywords, reply in responses.items():
        if any(word in content for word in keywords if isinstance(keywords, tuple)) or (isinstance(keywords, str) and keywords in content):
            await message.channel.send(reply)
            return
    
    await bot.process_commands(message)

# ==================== SỰ KIỆN ONLINE ====================
@bot.event
async def on_ready():
    print(f'✅ {bot.user} online!')
    print(f'📜 Script: {len(SCRIPTS)} | ⚙️ Executor: {len(EXECUTOR_KEYS)} | 🔑 Key Script: {len(SCRIPT_KEYS)}')
    await bot.change_presence(activity=discord.Game(name="!menu | Blox Fruits Pro"))

# ==================== CHẠY BOT ====================
TOKEN = os.environ.get('TOKEN')
if TOKEN:
    print("🚀 Đang khởi động bot...")
    bot.run(TOKEN)
else:
    print("❌ LỖI: Không tìm thấy token!")