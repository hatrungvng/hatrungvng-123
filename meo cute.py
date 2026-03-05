import discord
from discord.ext import commands
from discord.ui import Button, View
import random
import string

intents = discord.Intents.default()
intents.message_content = True
bot = commands.Bot(command_prefix='!', intents=intents)

# ==================== DATABASE KEY EXECUTOR ====================
EXECUTOR_KEYS = {
    "delta": {
        "name": "📱 Delta Executor",
        "keys": ["Delta2024", "DeltaVIP", "DeltaKey2025"],
        "how": "✅ Mở app Delta → Nhấn 'Get Key'\n✅ Hoàn thành verification\n✅ Copy key và dán vào app",
        "platform": "iOS/Android/Windows"
    },
    "arceus": {
        "name": "⚡ Arceus X",
        "keys": ["Arceus2024", "ArceusVIP", "ArceusPro"],
        "how": "✅ Mở app Arceus X → Nhấn 'Get Key'\n✅ Hoàn thành verification\n✅ Copy key",
        "platform": "Android"
    },
    "fluxus": {
        "name": "🔥 Fluxus",
        "keys": ["Fluxus2024", "FluxusPro", "FluxVIP"],
        "how": "✅ Truy cập fluxus.gg/key\n✅ Nhấn 'Get Key'\n✅ Xem quảng cáo 30s",
        "platform": "PC/Mobile"
    },
    "krnl": {
        "name": "⚡ KRNL",
        "keys": ["KRNL2024", "KRNLVIP", "KRNLPro"],
        "how": "✅ Truy cập krnl.gg/key\n✅ Nhấn 'Get Key'\n✅ Xem quảng cáo",
        "platform": "Windows"
    }
}

# ==================== DATABASE KEY SCRIPT ====================
SCRIPT_KEYS = {
    "kaitun": {
        "name": "⚡ Kaitun Hub",
        "keys": ["KaitunVIP2024", "KaitunPro"],
        "how": "✅ Join Discord: discord.gg/kaitun\n✅ Vào channel #key\n✅ Gõ !key",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/KaitunHub/BloxFruits/main/Kaitun.lua"))()'
    },
    "rubu": {
        "name": "💎 Rubu Hub",
        "keys": ["RubuVIP2024", "RubuPro"],
        "how": "✅ Link: rubuhub.com/key\n✅ Nhập mã: BLXFRUIT",
        "script": 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RubuHub/BloxFruits/main/RubuV5.lua"))()'
    }
}

# ==================== MENU CHÍNH ====================
class MainMenu(View):
    def __init__(self):
        super().__init__(timeout=None)
        
        btn1 = Button(label="⚙️ KEY EXECUTOR", style=discord.ButtonStyle.primary)
        async def f1(interaction):
            msg = "**⚙️ KEY EXECUTOR:**\n\n"
            for exec in EXECUTOR_KEYS.values():
                msg += f"**{exec['name']}**\n🔑 {', '.join(exec['keys'][:2])}\n📱 {exec['platform']}\n{exec['how']}\n\n"
            await interaction.response.send_message(msg[:2000])
        btn1.callback = f1
        
        btn2 = Button(label="📜 KEY SCRIPT", style=discord.ButtonStyle.success)
        async def f2(interaction):
            msg = "**📜 KEY SCRIPT:**\n\n"
            for script in SCRIPT_KEYS.values():
                msg += f"**{script['name']}**\n🔑 {', '.join(script['keys'])}\n{script['how']}\n📜 Script:\n```lua\n{script['script']}\n```\n\n"
            await interaction.response.send_message(msg[:2000])
        btn2.callback = f2
        
        btn3 = Button(label="🎲 TẠO KEY", style=discord.ButtonStyle.secondary)
        async def f3(interaction):
            key = ''.join(random.choices(string.ascii_uppercase + string.digits, k=12))
            await interaction.response.send_message(f"🎲 **Key ngẫu nhiên:** `FREE-{key}`")
        btn3.callback = f3
        
        self.add_item(btn1)
        self.add_item(btn2)
        self.add_item(btn3)

@bot.event
async def on_ready():
    print(f'✅ {bot.user} đã online!')
    await bot.change_presence(activity=discord.Game(name="!key"))

@bot.command()
async def key(ctx):
    embed = discord.Embed(
        title="🔑 KEY BLOX FRUITS",
        description=f"⚙️ {len(EXECUTOR_KEYS)} Executor • 📜 {len(SCRIPT_KEYS)} Script",
        color=discord.Color.purple()
    )
    await ctx.send(embed=embed, view=MainMenu())

TOKEN = "THAY_TOKEN_VAO_DAY"
bot.run(TOKEN)
