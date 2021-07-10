import mysql.connector
import math
import re
from CountWords import CountWords
class NB:

    def predict():
        my_dict = {}

        try:
            database = mysql.connector.connect(host="localhost", user="root", passwd="root",port="3308", db='socialmonitor')
            cursor = database.cursor()
            cursor1 = database.cursor()
            cursor2 = database.cursor()
            cursor.execute("select * from temp ")
            records = cursor.fetchall()
            fr = 0
            for row in records:
                doc = row[0];
                #print("doc=" +doc)
                c1 = len(doc.split())
                
                p_c = 0.0
                res = 0.0
            

                cursor2.execute("select * from words ")
                rows1 = cursor2.fetchall()
                for r1 in rows1:
                    p_c = 0
                    res = 0
                    docn = r1[2]
                    #print(docn)
                    c2 = len(docn.split())
                    #print("docn=" + docn)
                    #print("c2=", c2)
                    p_c = c2 / (c1 + c2)
                    #print('pc====',p_c)
                    token = re.split(r'[;,\s]\s*', docn)  # docn.split()
                    #print("tk=", token)
                    
                    count = 0
                    # print("cnt="+content)
                    unique_list = []
                    count=CountWords.countOccurences(doc,docn)
                    #print("------------------>" + str(count))
                    tk = int(count)
                    res = float(tk / (c1 + c2));
                    res = float(p_c * res)
                    fr = fr + res
                    #print(fr,"=========")
            
            cursor2.execute("delete from temp")
            database.commit()
            cursor2.execute("insert into temp values('" + str(fr) + "')")
            database.commit()

        except Exception as e:
            print(e)

if __name__ == '__main__':
    NB.predict()