[33mcommit 6407e9e80b608edd155e167861a29f37b59060bb[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: Marco Acevedo <marcoapon@hotmail.com>
Date:   Sat Mar 12 20:39:48 2022 +0000

    hangman game project start

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..eba74f4[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mvenv/[m
\ No newline at end of file[m
[1mdiff --git a/.vscode/launch.json b/.vscode/launch.json[m
[1mnew file mode 100644[m
[1mindex 0000000..b7294db[m
[1m--- /dev/null[m
[1m+++ b/.vscode/launch.json[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m{[m
[32m+[m[32m    // Use IntelliSense para saber los atributos posibles.[m
[32m+[m[32m    // Mantenga el puntero para ver las descripciones de los existentes atributos.[m
[32m+[m[32m    // Para más información, visite: https://go.microsoft.com/fwlink/?linkid=830387[m
[32m+[m[32m    "version": "0.2.0",[m
[32m+[m[32m    "configurations": [[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "Python: Archivo actual",[m
[32m+[m[32m            "type": "python",[m
[32m+[m[32m            "request": "launch",[m
[32m+[m[32m            "program": "${file}",[m
[32m+[m[32m            "console": "integratedTerminal",[m
[32m+[m[32m            "justMyCode": true[m
[32m+[m[32m        }[m
[32m+[m[32m    ][m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/archivos.py b/archivos.py[m
[1mnew file mode 100644[m
[1mindex 0000000..f280d72[m
[1m--- /dev/null[m
[1m+++ b/archivos.py[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m
[32m+[m[32mdef read():[m
[32m+[m[32m    numbers = [][m
[32m+[m[32m    with open("./archivos/numbers.txt", "r", encoding="utf-8") as f:[m
[32m+[m[32m        for line in f:[m
[32m+[m[32m            numbers.append(int(line))[m
[32m+[m[32m    print(numbers)[m
[32m+[m
[32m+[m
[32m+[m[32mdef write():[m
[32m+[m[32m    names = ["marco", "Miguel", "Andres", "Maria", "pepe"][m
[32m+[m[32m    with open("./archivos/names.txt", "w", encoding= "utf-8") as f:[m
[32m+[m[32m        for name in names:[m
[32m+[m[32m            f.write(name)[m
[32m+[m[32m            f.write("\n")[m
[32m+[m
[32m+[m[32mdef run():[m
[32m+[m[32m    read()[m
[32m+[m[32m    write()[m
[32m+[m
[32m+[m
[32m+[m[32mif __name__=="__main__":[m
[32m+[m[32m    run()[m
[32m+[m
[32m+[m
[1mdiff --git a/archivos/data.txt b/archivos/data.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..df66a24[m
[1m--- /dev/null[m
[1m+++ b/archivos/data.txt[m
[36m@@ -0,0 +1,171 @@[m
[32m+[m[32mcrema[m
[32m+[m[32mcafé[m
[32m+[m[32mestrella[m
[32m+[m[32mexplosión[m
[32m+[m[32mguitarra[m
[32m+[m[32mplástico[m
[32m+[m[32mnavaja[m
[32m+[m[32mmartillo[m
[32m+[m[32mlibros[m
[32m+[m[32mlápiz[m
[32m+[m[32mlapicera[m
[32m+[m[32maluminio[m
[32m+[m[32membarcación[m
[32m+[m[32mletra[m
[32m+[m[32magujeta[m
[32m+[m[32mventana[m
[32m+[m[32mlibrería[m
[32m+[m[32msonido[m
[32m+[m[32muniversidad[m
[32m+[m[32mrueda[m
[32m+[m[32mperro[m
[32m+[m[32mllaves[m
[32m+[m[32mcamisa[m
[32m+[m[32mpelo[m
[32m+[m[32mpapá[m
[32m+[m[32msillón[m
[32m+[m[32mfelicidad[m
[32m+[m[32mcatre[m
[32m+[m[32mteclado[m
[32m+[m[32mservilleta[m
[32m+[m[32mescuela[m
[32m+[m[32mpantalla[m
[32m+[m[32msol[m
[32m+[m[32mcodo[m
[32m+[m[32mtenedor[m
[32m+[m[32mestadística[m
[32m+[m[32mmapa[m
[32m+[m[32magua[m
[32m+[m[32mmensaje[m
[32m+[m[32mlima[m
[32m+[m[32mcohete[m
[32m+[m[32mrey[m
[32m+[m[32medificio[m
[32m+[m[32mcésped[m
[32m+[m[32mpresidencia[m
[32m+[m[32mhojas[m
[32m+[m[32mparlante[m
[32m+[m[32mcolegio[m
[32m+[m[32mgranizo[m
[32m+[m[32mpestaña[m
[32m+[m[32mlámpara[m
[32m+[m[32mmano[m
[32m+[m[32mmonitor[m
[32m+[m[32mflor[m
[32m+[m[32mmúsica[m
[32m+[m[32mhombre[m
[32m+[m[32mtornillo[m
[32m+[m[32mhabitación[m
[32m+[m[32mvelero[m
[32m+[m[32mabuela[m
[32m+[m[32mabuelo[m
[32m+[m[32mpalo[m
[32m+[m[32msatélite[m
[32m+[m[32mtemplo[m
[32m+[m[32mlentes[m
[32m+[m[32mbolígrafo[m
[32m+[m[32mplato[m
[32m+[m[32mnube[m
[32m+[m[32mgobierno[m
[32m+[m[32mbotella[m
[32m+[m[32mcastillo[m
[32m+[m[32menano[m
[32m+[m[32mcasa[m
[32m+[m[32mlibro[m
[32m+[m[32mpersona[m
[32m+[m[32mplaneta[m
[32m+[m[32mtelevisor[m
[32m+[m[32mguantes[m
[32m+[m[32mmetal[m
[32m+[m[32mteléfono[m
[32m+[m[32mproyector[m
[32m+[m[32mmono[m
[32m+[m[32mremera[m
[32m+[m[32mmuela[m
[32m+[m[32mpetróleo[m
[32m+[m[32mpercha[m
[32m+[m[32mremate[m
[32m+[m[32mdebate[m
[32m+[m[32manillo[m
[32m+[m[32mcuaderno[m
[32m+[m[32mruido[m
[32m+[m[32mpared[m
[32m+[m[32mtaladro[m
[32m+[m[32mherramienta[m
[32m+[m[32mcartas[m
[32m+[m[32mchocolate[m
[32m+[m[32manteojos[m
[32m+[m[32mimpresora[m
[32m+[m[32mcaramelos[m
[32m+[m[32mliving[m
[32m+[m[32mluces[m
[32m+[m[32mangustia[m
[32m+[m[32mzapato[m
[32m+[m[32mbomba[m
[32m+[m[32mlluvia[m
[32m+[m[32mojo[m
[32m+[m[32mcorbata[m
[32m+[m[32mperiódico[m
[32m+[m[32mdiente[m
[32m+[m[32mplanta[m
[32m+[m[32mchupetín[m
[32m+[m[32mbuzo[m
[32m+[m[32moficina[m
[32m+[m[32mpersiana[m
[32m+[m[32mpuerta[m
[32m+[m[32mtío[m
[32m+[m[32msilla[m
[32m+[m[32mensalada[m
[32m+[m[32mpradera[m
[32m+[m[32mzoológico[m
[32m+[m[32mcandidato[m
[32m+[m[32mdeporte[m
[32m+[m[32mrecipiente[m
[32m+[m[32mdiarios[m
[32m+[m[32mfotografía[m
[32m+[m[32mave[m
[32m+[m[32mhierro[m
[32m+[m[32mrefugio[m
[32m+[m[32mpantalón[m
[32m+[m[32mbarco[m
[32m+[m[32mcarne[m
[32m+[m[32mnieve[m
[32m+[m[32mtecla[m
[32m+[m[32mhumedad[m
[32m+[m[32mpistola[m
[32m+[m[32mdepartamento[m
[32m+[m[32mcelular[m
[32m+[m[32mtristeza[m
[32m+[m[32mhipopótamo[m
[32m+[m[32msofá[m
[32m+[m[32mcama[m
[32m+[m[32márbol[m
[32m+[m[32mmesada[m
[32m+[m[32mcampera[m
[32m+[m[32mdiscurso[m
[32m+[m[32mauto[m
[32m+[m[32mcinturón[m
[32m+[m[32mrúcula[m
[32m+[m[32mfamoso[m
[32m+[m[32mmadera[m
[32m+[m[32mlentejas[m
[32m+[m[32mpiso[m
[32m+[m[32mmaletín[m
[32m+[m[32mreloj[m
[32m+[m[32mdiputado[m
[32m+[m[32mcuchillo[m
[32m+[m[32mdesodorante[m
[32m+[m[32mcandado[m
[32m+[m[32mluz[m
[32m+[m[32mmontañas[m
[32m+[m[32mcomputadora[m
[32m+[m[32mradio[m
[32m+[m[32mmoño[m
[32m+[m[32mcuadro[m
[32m+[m[32mcalor[m
[32m+[m[32mpartido[m
[32m+[m[32mteatro[m
[32m+[m[32mbife[m
[32m+[m[32mfiesta[m
[32m+[m[32mbala[m
[32m+[m[32mauriculares[m
\ No newline at end of file[m
[1mdiff --git a/archivos/names.txt b/archivos/names.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..bfd4739[m
[1m--- /dev/null[m
[1m+++ b/archivos/names.txt[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32mmarco[m
[32m+[m[32mMiguel[m
[32m+[m[32mAndres[m
[32m+[m[32mMaria[m
[32m+[m[32mpepe[m
[1mdiff --git a/archivos/numbers.txt b/archivos/numbers.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..32f1e62[m
[1m--- /dev/null[m
[1m+++ b/archivos/numbers.txt[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m1[m
[32m+[m[32m4545[m
[32m+[m[32m25[m
[32m+[m[32m25[m
[32m+[m[32m2[m
[32m+[m[32m5[m
[32m+[m[32m44[m
[32m+[m[32m68[m
[32m+[m[32m16[m
[32m+[m[32m1515[m
[32m+[m[32m15[m
[32m+[m[32m586[m
[32m+[m[32m16[m
[32m+[m[32m45[m
[32m+[m[32m58[m
[32m+[m[32m49[m
[1mdiff --git a/debugging.py b/debugging.py[m
[1mnew file mode 100644[m
[1mindex 0000000..c3ba6de[m
[1m--- /dev/null[m
[1m+++ b/debugging.py[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32mdef divisors(num):[m
[32m+[m[32m    divisors = [][m
[32m+[m[32m    for i in range(1, num + 1):[m
[32m+[m[32m        if num % i == 0:[m
[32m+[m[32m            divisors.append(i)[m
[32m+[m[32m    return divisors[m
[32m+[m
[32m+[m[32mdef run():[m
[32m+[m[32m    try:[m
[32m+[m[32m        num = int(input("Ingresa un numero: "))[m
[32m+[m[32m        assert  num > 0, "Debes ingresar un numero positivo"[m
[32m+[m[32m        print(divisors(num))[m
[32m+[m[32m        print("termino mi programa ")[m
[32m+[m[32m    except ValueError:[m
[32m+[m[32m        print("debes ingresar un numero  ")[m
[32m+[m
[32m+[m
[32m+[m[32mif __name__=="__main__":[m
[32m+[m[32m    run()[m
\ No newline at end of file[m
[1mdiff --git a/filtrando_datos.py b/filtrando_datos.py[m
[1mnew file mode 100644[m
[1mindex 0000000..55ea393[m
[1m--- /dev/null[m
[1m+++ b/filtrando_datos.py[m
[36m@@ -0,0 +1,89 @@[m
[32m+[m[32mimport pstats[m
[32m+[m
[32m+[m
[32m+[m[32mDATA = [[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Facundo',[m
[32m+[m[32m        'age': 72,[m
[32m+[m[32m        'organization': 'Platzi',[m
[32m+[m[32m        'position': 'Technical Coach',[m
[32m+[m[32m        'language': 'python',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Luisana',[m
[32m+[m[32m        'age': 33,[m
[32m+[m[32m        'organization': 'Globant',[m
[32m+[m[32m        'position': 'UX Designer',[m
[32m+[m[32m        'language': 'javascript',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Héctor',[m
[32m+[m[32m        'age': 19,[m
[32m+[m[32m        'organization': 'Platzi',[m
[32m+[m[32m        'position': 'Associate',[m
[32m+[m[32m        'language': 'ruby',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Gabriel',[m
[32m+[m[32m        'age': 20,[m
[32m+[m[32m        'organization': 'Platzi',[m
[32m+[m[32m        'position': 'Associate',[m
[32m+[m[32m        'language': 'javascript',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Isabella',[m
[32m+[m[32m        'age': 30,[m
[32m+[m[32m        'organization': 'Platzi',[m
[32m+[m[32m        'position': 'QA Manager',[m
[32m+[m[32m        'language': 'java',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Karo',[m
[32m+[m[32m        'age': 23,[m
[32m+[m[32m        'organization': 'Everis',[m
[32m+[m[32m        'position': 'Backend Developer',[m
[32m+[m[32m        'language': 'python',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Ariel',[m
[32m+[m[32m        'age': 32,[m
[32m+[m[32m        'organization': 'Rappi',[m
[32m+[m[32m        'position': 'Support',[m
[32m+[m[32m        'language': '',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Juan',[m
[32m+[m[32m        'age': 17,[m
[32m+[m[32m        'organization': '',[m
[32m+[m[32m        'position': 'Student',[m
[32m+[m[32m        'language': 'go',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Pablo',[m
[32m+[m[32m        'age': 32,[m
[32m+[m[32m        'organization': 'Master',[m
[32m+[m[32m        'position': 'Human Resources Manager',[m
[32m+[m[32m        'language': 'python',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'name': 'Lorena',[m
[32m+[m[32m        'age': 56,[m
[32m+[m[32m        'organization': 'Python Organization',[m
[32m+[m[32m        'position': 'Language Maker',[m
[32m+[m[32m        'language': 'python',[m
[32m+[m[32m    },[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mdef run ():[m
[32m+[m[32m    all_python_devs = list(filter(lambda worked : worked ["language"] == "python", DATA ))[m
[32m+[m[32m    all_python_devs = list(map(lambda worked: worked["name"], all_python_devs))[m
[32m+[m[32m    all_platzi_workers = list(filter(lambda worked: worked["organization"] == "Platzi", DATA))[m
[32m+[m[32m    all_platzi_workers = list(map(lambda worked: worked["name"], all_platzi_workers))[m
[32m+[m[32m    old_people = [worked["name"] for worked in DATA if worked["age"] >18][m
[32m+[m
[32m+[m[32m    for worked in old_people:[m
[32m+[m[32m        print(worked)[m
[32m+[m
[32m+[m[32mif __name__=="__main__":[m
[32m+[m[32m    run()[m
[32m+[m
[1mdiff --git a/juego_del_ahorcado.py b/juego_del_ahorcado.py[m
[1mnew file mode 100644[m
[1mindex 0000000..f527b16[m
[1m--- /dev/null[m
[1m+++ b/juego_del_ahorcado.py[m
[36m@@ -0,0 +1,92 @@[m
[32m+[m
[32m+[m[32mfrom ast import Str[m
[32m+[m[32mimport random[m
[32m+[m[32mimport os[m
[32m+[m
[32m+[m[32mdef clear():[m
[32m+[m[32m    if os.name == "posix":[m
[32m+[m[32m        os.system("clear")[m
[32m+[m[32m    elif os.name ==("ce", "nt", "dos"):[m
[32m+[m[32m        os.system("cls")[m
[32m+[m
[32m+[m[32mdef run ():[m
[32m+[m[32m    for i in range (18):[m
[32m+[m[32m        print("*", end=" ")[m
[32m+[m[32m    print("\n*      Welcome to HANGMAN GAME    *")[m
[32m+[m[32m    for i in range (18):[m
[32m+[m[32m        print("*",end=" " )[m
[32m+[m
[32m+[m[32m    print ("\nObjetive : The objective of the game is to guess the secret word using our ingenuity and imagination. \n")[m
[32m+[m[32m    print("Rulers : You must enter only letters, numbers and special characters are not allowed.\n You can only enter one letter at a time and then see the result on the board. \n By guessing the secret word you can advance to the next level to complete the next word")[m
[32m+[m[32m    input(" Press enter key to start. ")[m
[32m+[m[32m    clear()[m
[32m+[m
[32m+[m[32m    data = [][m
[32m+[m[32m    word_usser_str = ""[m
[32m+[m[32m    all_letters = [][m
[32m+[m
[32m+[m[32m    with open("./archivos/data.txt", "r",  encoding="utf-8") as f:[m
[32m+[m[32m        for word in f:[m
[32m+[m[32m            data.append((word.strip()))[m
[32m+[m[32m            data_enumerate = list((data))[m
[32m+[m[32m    #print(data_enumerate)[m
[32m+[m
[32m+[m[32m    for word_secret in data_enumerate:[m
[32m+[m[32m        random.shuffle(data_enumerate)[m
[32m+[m[32m        #print (word_secret)[m
[32m+[m[32m        word_usser = [][m
[32m+[m[32m        all_letters=[][m
[32m+[m
[32m+[m[32m        for i in range(len(word_secret)):[m
[32m+[m[32m                word_usser.append("_")[m
[32m+[m
[32m+[m[41m        [m
[32m+[m[32m        while word_usser_str != word_secret:[m
[32m+[m[32m            print("THE HANGMAN\n")[m
[32m+[m[41m            [m
[32m+[m[41m            [m
[32m+[m[32m            for letter in word_secret:[m
[32m+[m[32m                if letter in word_usser:[m
[32m+[m[32m                    print(letter, end="")[m
[32m+[m[41m                    [m
[32m+[m[32m                else:[m
[32m+[m[32m                    print(" _ ", end="")[m
[32m+[m
[32m+[m[32m            letter_usser = (input("\n \n Enter a Letter: "))[m
[32m+[m[32m            letter_usser = letter_usser.lower()[m
[32m+[m[41m            [m
[32m+[m
[32m+[m[32m            clear()[m
[32m+[m[41m            [m
[32m+[m[32m            if len(letter_usser) != 1 or letter_usser.isnumeric():[m
[32m+[m[32m                print ("\n You must enter only one letter")[m
[32m+[m[32m            elif letter_usser in all_letters:[m
[32m+[m[32m                print(" \n \n You have already written this letter before try a new one")[m
[32m+[m[32m            else:[m
[32m+[m[32m                all_letters.append(letter_usser)[m
[32m+[m
[32m+[m[41m            [m
[32m+[m[32m            for i in range(len(word_secret)):[m
[32m+[m[32m                if word_secret[i] == letter_usser:[m
[32m+[m[32m                    word_usser[i] = letter_usser[m
[32m+[m[32m                    word_usser_str = "".join(word_usser)[m
[32m+[m[32m                    #print(word_usser_str)[m
[32m+[m
[32m+[m[32m            if letter_usser not in word_secret:[m
[32m+[m[32m                input("\n This letter does not belong to the SECRET WORD please try again\n press enter to continue  ")[m
[32m+[m[32m                clear()[m
[32m+[m[41m           [m
[32m+[m
[32m+[m[32m        else:[m
[32m+[m
[32m+[m[32m            print ("\n You are a CHAMPION, goin to the nex level ")[m
[32m+[m[41m        [m
[32m+[m[32m        clear()[m
[32m+[m[41m        [m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32mif __name__=="__main__":[m
[32m+[m
[32m+[m[32m    run()[m
[32m+[m
[1mdiff --git a/list_and_dics.py b/list_and_dics.py[m
[1mnew file mode 100644[m
[1mindex 0000000..bf31f71[m
[1m--- /dev/null[m
[1m+++ b/list_and_dics.py[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32mdef run():[m
[32m+[m[32m    squares = {i : i**3 for i in range (1, 1000) if i % 3 == 0 }[m
[32m+[m[32m    print (squares)[m
[32m+[m
[32m+[m[32mif __name__=="__main__":[m
[32m+[m[32m    run()[m
\ No newline at end of file[m
