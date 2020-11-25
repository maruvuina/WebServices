CREATE TABLE category
(
    id_category MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(10) NOT NULL
);

CREATE TABLE user
(
    id_user   MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    email     VARCHAR(40) NOT NULL,
    password  VARCHAR(100) NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    role      VARCHAR(7)  NOT NULL,
    authorise TINYINT NOT NULL
);

CREATE TABLE ingredient
(
    id_ingredient MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    ingredient_name VARCHAR(50) NOT NULL
);

CREATE TABLE recipe
(
    id_recipe      MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    recipe_name    VARCHAR(150) NOT NULL,
    cooking_time   MEDIUMINT    NOT NULL,
    yield          MEDIUMINT    NOT NULL,
    main_picture   VARCHAR(200) NOT NULL,
    id_user_fk     MEDIUMINT    NOT NULL,
    id_category_fk MEDIUMINT    NOT NULL,
    FOREIGN KEY (id_user_fk) REFERENCES user (id_user),
    FOREIGN KEY (id_category_fk) REFERENCES category (id_category)
);

CREATE TABLE comment
(
    id_comment MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    id_recipe_fk MEDIUMINT NOT NULL,
    text VARCHAR(600) NOT NULL,
    FOREIGN KEY (id_recipe_fk) REFERENCES recipe (id_recipe)
);

CREATE TABLE recipe_ingredient (
   id_recipe_fk MEDIUMINT NOT NULL,
   id_ingredient_fk MEDIUMINT NOT NULL,
   FOREIGN KEY (id_recipe_fk) REFERENCES recipe (id_recipe),
   FOREIGN KEY (id_ingredient_fk) REFERENCES ingredient (id_ingredient)
);

CREATE TABLE role
(
    id_role MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(10) NOT NULL
);


CREATE TABLE user_roles
(
    id_user_fk MEDIUMINT NOT NULL,
    id_role_fk MEDIUMINT NOT NULL,
    FOREIGN KEY (id_user_fk) REFERENCES user (id_user),
    FOREIGN KEY (id_role_fk) REFERENCES role (id_role)
);


-------------------------------------------------------------------------
--------------------------For improved system----------------------------
-------------------------------------------------------------------------
CREATE TABLE recipe_part
(
    id_recipe_fk      MEDIUMINT NOT NULL,
    id_ingredient_fk  MEDIUMINT NOT NULL,
    amount            MEDIUMINT NULL,
    id_measurement_fk MEDIUMINT NOT NULL,
    PRIMARY KEY (id_recipe_fk, id_ingredient_fk),
    FOREIGN KEY (id_recipe_fk) REFERENCES recipe (id_recipe),
    FOREIGN KEY (id_ingredient_fk) REFERENCES ingredient (id_ingredient),
    FOREIGN KEY (id_measurement_fk) REFERENCES measurement (id_measurement)
);

CREATE TABLE instruction
(
    id_instruction MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    id_recipe_fk   MEDIUMINT    NOT NULL,
    step_number    MEDIUMINT    NOT NULL,
    description    VARCHAR(500) NOT NULL,
    FOREIGN KEY (id_recipe_fk) REFERENCES recipe (id_recipe)
);


CREATE TABLE measurement
(
    id_measurement   MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    measurement_name VARCHAR(10) NOT NULL
);

CREATE TABLE recipe_likes
(
    id_recipe_fk MEDIUMINT NOT NULL,
    id_user_fk   MEDIUMINT NOT NULL,
    PRIMARY KEY (id_user_fk, id_recipe_fk),
    FOREIGN KEY (id_recipe_fk) REFERENCES recipe (id_recipe),
	FOREIGN KEY (id_user_fk) REFERENCES user (id_user)
);
