import gspread
import pandas as pd   
 


gc = gspread.service_account(filename='credentials.json')
sh = gc.open('KenyaAir')

wks = sh.worksheet('KenyaAirPollution')

data = wks.get_all_records()

df = pd.DataFrame(data)