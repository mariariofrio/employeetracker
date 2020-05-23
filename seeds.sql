INSERT INTO `employeer_db`.`department` (`id`, `NAME`) VALUES ('1', 'teaching');
INSERT INTO `employeer_db`.`department` (`id`, `NAME`) VALUES ('2', 'beueorcracy');
INSERT INTO `employeer_db`.`role` (`id`, `title`, `salary`, `department_id`) VALUES ('1', 'tutor', '1000000', '1');
INSERT INTO `employeer_db`.`role` (`id`, `title`, `salary`, `department_id`) VALUES ('2', 'instructor', '2000000', '1');
INSERT INTO `employeer_db`.`role` (`id`, `title`, `salary`, `department_id`) VALUES ('3', 'administrator', '3000000', '2');
INSERT INTO `employeer_db`.`employees` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES ('1', 'nick', 'g', '1', '2');
INSERT INTO `employeer_db`.`employees` (`id`, `first_name`, `last_name`, `role_id`) VALUES ('2', 'the', 'boss', '3');
INSERT INTO `employeer_db`.`employees` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES ('3', 'beau', 'H', '2', '2');


-- SELECT employees.first_name as thisGuy,
-- 		bosses.last_name as worksFor
-- FROM role Join department ON role.department_id = department.id 
-- 		Join employees ON employees.role_id = role.id
--         JOIN employees  as bosses ON employees.manager_id = bosses.id
-- WHERE employees.first_name = "nick"