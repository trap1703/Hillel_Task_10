# Hillel_Task_10
Домашнее задание 10
Добавлено: 12.01.2020 21:33
Jenkins as Code
Создайте простую pipeline job, положите в git (workflow aggregator plugin);
Создайте Seed job, которая будет на основании Jenkinsfile вашего пайплайна создавать под него проект; 
конфиг должен содержать настройку scm для проекта и ротацию билд логов (пусть будет хранить 100 последних билдов). 
положите в git (job dsl plugin);
Создайте 2 файла: jenkins.yaml (нужен для JCasC плагина) и plugins файл, в котором перечислите 
id плагинов необходимых для корректного функционирования вашего jenkins master (три из 
них уже были перечислены, добавьте в этот список configuration-as-code-support);
создайте Dockerfile и на основе jenkins image соберите свой образ:
положите туда jenkins.yaml и plugins файл;
положите свой git ssh key (нужен для Seed Job);
установите переменную окружения CASC_JENKINS_CONFIG, которая будет содержать путь к jenkins.yaml;
установите эти плагины с помощью встроенного в образ скрипта.
на выходе у вас должен получиться рабочий jenkins master, с готовой pipeline job, и соответственно seed job, 
которая будет отвечать за конфигурацию оной.
