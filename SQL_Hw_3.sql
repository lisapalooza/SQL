 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 select e.employee_name, s.monthly_salary
 from employee_salary es 
 join employees e  on es.employee_id = e.id
 join salary s on es.salary_id = s.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
 select e.employee_name, s.monthly_salary
 from employee_salary es 
 inner join employees e  on es.employee_id = e.id
 inner join salary s on es.salary_id = s.id
 where monthly_salary < 2000;
 
-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select  e.employee_name, es.salary_id 
 from employee_salary es
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where es.employee_id is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select s.monthly_salary,  e.employee_name
 from employee_salary es
 left outer join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where employee_name is null and monthly_salary < 2000;
 
-- 5. Найти всех работников кому не начислена ЗП.
 select e.employee_name, es.salary_id 
 from employees e
 full join employee_salary es on e.id = es.id
 where salary_id is null;

-- 6. Вывести всех работников с названиями их должности.
 select e.employee_name, r.role_name
 from roles_employee re
 inner join employees e  on re.employee_id = e.id
 inner join roles r on re.role_id = r.id;
 
-- 7. Вывести имена и должность только Java разработчиков.
 select e.employee_name, r.role_name
 from roles_employee re
 inner join employees e  on re.employee_id = e.id
 inner join roles r on re.role_id = r.id
 where role_name like '%Java developer';
 
-- 8. Вывести имена и должность только Python разработчиков.
 select e.employee_name, r.role_name
 from roles_employee re
 inner join employees e  on re.employee_id = e.id
 inner join roles r on re.role_id = r.id
 where role_name like '%Python%';
 
-- 9. Вывести имена и должность всех QA инженеров.
 select e.employee_name, r.role_name
 from roles_employee re
 inner join employees e  on re.employee_id = e.id
 inner join roles r on re.role_id = r.id
 where role_name like '%QA%';
 
-- 10. Вывести имена и должность ручных QA инженеров.
 select e.employee_name, r.role_name
 from roles_employee re
 inner join employees e  on re.employee_id = e.id
 inner join roles r on re.role_id = r.id
 where role_name like '%Manual%';
 
-- 11. Вывести имена и должность автоматизаторов QA
 select e.employee_name, r.role_name
 from roles_employee re
 inner join employees e  on re.employee_id = e.id
 inner join roles r on re.role_id = r.id
 where role_name like '%Automation%';
 
-- 12. Вывести имена и зарплаты Junior специалистов
 select e.employee_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%Junior%';
 
 -- 13. Вывести имена и зарплаты Middle специалистов
 select e.employee_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like 'Middle%';
 
-- 14. Вывести имена и зарплаты Senior специалистов
 select e.employee_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like 'Senior%';
 
-- 15. Вывести зарплаты Java разработчиков
 select s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%Java developer';
 
-- 16. Вывести зарплаты Python разработчиков
 select s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%Python%';
 
-- 17. Вывести имена и зарплаты Junior Python разработчиков
 select e.employee_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like 'Junior Python%';
 
-- 18. Вывести имена и зарплаты Middle JS разработчиков
 select e.employee_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like 'Middle JavaScript%';
 
-- 19. Вывести имена и зарплаты Senior Java разработчиков
 select e.employee_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like 'Senior Java developer';
 
-- 20. Вывести зарплаты Junior QA инженеров
 select s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%Junior% %QA engineer';
 
-- 21. Вывести среднюю зарплату всех Junior специалистов
 select avg(monthly_salary)
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like 'Junior%';
 
-- 22. Вывести сумму зарплат JS разработчиков
 select sum(monthly_salary)
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%JavaScript%';
 
-- 23. Вывести минимальную ЗП QA инженеров
 select min(monthly_salary)
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%QA%';
 
-- 24. Вывести максимальную ЗП QA инженеров
 select max(monthly_salary)
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%QA%';
 
-- 25. Вывести количество QA инженеров
 select count(role_id)
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%QA%';
 
-- 26. Вывести количество Middle специалистов.
 select count(role_id)
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%Middle%';
 
-- 27. Вывести количество разработчиков
 select count(role_id)
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%developer';
 
-- 28. Вывести фонд (сумму) зарплаты разработчиков.
 select sum(monthly_salary)
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where role_name like '%developer';
 
-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 select e.employee_name, role_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 join salary s on s.id = es.salary_id 
 order by e.employee_name, role_name, s.monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 select e.employee_name, role_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 full join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 full join salary s on s.id = es.salary_id 
 where monthly_salary between 1700 and 2300
 order by e.employee_name, role_name, s.monthly_salary asc;
 
-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 select e.employee_name, role_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 join salary s on s.id = es.salary_id 
 where monthly_salary < 2300
 order by e.employee_name, role_name, s.monthly_salary asc;
 
-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 select e.employee_name, role_name, s.monthly_salary
 from roles_employee re
 full join roles r on r.id = re.role_id
 join employee_salary es on re.id = es.id
 join employees e on e.id = es.employee_id 
 join salary s on s.id = es.salary_id 
 where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
 order by e.employee_name, role_name, s.monthly_salary asc;
