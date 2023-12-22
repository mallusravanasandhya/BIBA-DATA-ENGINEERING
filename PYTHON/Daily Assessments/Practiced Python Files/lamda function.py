str1 = 'GeeksforGeeks'

upper = lambda string: string.upper()
print(upper(str1))
print(str1)
l=lambda string:string.lower()
print(l(str1))

format_numeric = lambda num: f"{num:e}" if isinstance(num, int) else f"{num:,.2f}"
print("Int formatting:", format_numeric(1000000))
print("float formatting:", format_numeric(999999.789541235))
print(format_numeric(23.3456341332))