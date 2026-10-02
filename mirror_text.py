from pathlib import Path
import re

p = Path(r"c:\Users\Flynn\AppData\Roaming\ModrinthApp\profiles\Datapacks (1)\saves\hexenspells demo\datapacks\hexenkraft\data\hexenkraft\function\private\display_mana.mcfunction")
text = p.read_text(encoding="utf-8")
text = re.sub(r'"text":"(.*?)"', lambda m: '"text":"' + m.group(1)[::-1] + '"', text)
p.write_text(text, encoding="utf-8")
print('UPDATED', p)
print('SAMPLE:', text.splitlines()[0])
