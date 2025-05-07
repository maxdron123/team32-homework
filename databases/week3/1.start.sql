CREATE TABLE `meals` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`title` VARCHAR(100) NOT NULL,
`description` TEXT, 
`location` VARCHAR(100),
`when` DATETIME,
`max_reservations` INT,
`price` DECIMAL(5,2),
`created_date` DATE
);

CREATE TABLE `reservations` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`number_of_guests` INT NOT NULL,
`meal_id` INT,
`created_date` DATE,
`contact_phonenumber` VARCHAR(100),
`contact_name` VARCHAR(100),
`contact_email` VARCHAR(100),
FOREIGN KEY(`meal_id`) REFERENCES `meals`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `reviews`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`title` VARCHAR(100) NOT NULL,
`description` TEXT, 
`meal_id` INT,
`stars` INT,
`created_date` DATE,
FOREIGN KEY(`meal_id`) REFERENCES `meals`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

