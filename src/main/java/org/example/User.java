package org.example;

import javax.validation.constraints.*;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class User {
    @Size(min = 2, message = "*Ім`я має бути більше за 2 символи")
    private String firstName;
    @Size(min = 2, message = "*Прізвище має бути більше за 2 символи")
    private String lastName;
    @NotBlank(message = "*Номер телефону обов`язковий")
    private String phone;
    private String password;
    @NotNull(message = "*Паролі не співпадають")
    private String passwordRepetition;
    @Pattern(regexp = "^(.+)@(.+)$", message = "*Введіть коректний email!")
    private String email;
    @Min(value = 18, message = "*Вам повинно бути 18 років!")
    private int age;
    private String target;
    private String gender;
    private String[] interests;
    private Map<String, String> targets;
    private Map<String, String> genders;
    private Map<String, String> listInterests;

    public User(String firstName, String lastName, int age, String target, String phone) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.target = target;
        this.phone = phone;
        this.targets = new LinkedHashMap<>();
        this.targets.put("man", "man");
        this.targets.put("woman", "woman");
        this.genders = new HashMap();
        this.genders.put("male", "male");
        this.genders.put("female", "female");
        this.genders.put("other", "other");
        this.listInterests = new HashMap();
        this.listInterests.put("books", "books");
        this.listInterests.put("films", "films");
        this.listInterests.put("programming", "programming");
    }

    public User(String firstName, String lastName, int age) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.targets = new LinkedHashMap<>();
        this.targets.put("man", "man");
        this.targets.put("woman", "woman");
        this.genders = new HashMap();
        this.genders.put("male", "male");
        this.genders.put("female", "female");
        this.genders.put("other", "other");
        this.listInterests = new HashMap();
        this.listInterests.put("books", "books");
        this.listInterests.put("films", "films");
        this.listInterests.put("programming", "programming");

    }

    public User(String firstName, String lastName, int age, String target) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.target = target;
        this.targets = new LinkedHashMap<>();
        this.targets.put("man", "man");
        this.targets.put("woman", "woman");
        this.genders = new HashMap();
        this.genders.put("male", "male");
        this.genders.put("female", "female");
        this.genders.put("other", "other");
        this.listInterests = new HashMap();
        this.listInterests.put("books", "books");
        this.listInterests.put("films", "films");
        this.listInterests.put("programming", "programming");

    }

    public User() {
        this.targets = new LinkedHashMap<>();
        this.targets.put("man", "man");
        this.targets.put("woman", "woman");
        this.genders = new HashMap();
        this.genders.put("male", "male");
        this.genders.put("female", "female");
        this.genders.put("other", "other");
        this.listInterests = new HashMap();
        this.listInterests.put("books", "books");
        this.listInterests.put("films", "films");
        this.listInterests.put("programming", "programming");

    }

    public String[] getInterests() {
        return interests;
    }

    public void setInterests(String[] interests) {
        this.interests = interests;
    }

    public Map<String, String> getListInterests() {
        return listInterests;
    }

    public void setListInterests(Map<String, String> listInterests) {
        this.listInterests = listInterests;
    }

    public String getPassword() {
        return password;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setTargets(Map<String, String> targets) {
        this.targets = targets;
    }

    public Map<String, String> getGenders() {
        return genders;
    }

    public void setGenders(Map<String, String> genders) {
        this.genders = genders;
    }

    public void setPassword(String password) {
        this.password = password;
        checkPassword();
    }

    public String getPasswordRepetition() {
        return passwordRepetition;
    }

    public void setPasswordRepetition(String passwordRepetition) {
        this.passwordRepetition = passwordRepetition;
        checkPassword();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Map<String, String> getTargets() {
        return targets;
    }

    public void setDepartments(Map<String, String> targets) {
        this.targets = targets;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getTarget() {
        return target;
    }

    public void setDepartment(String department) {
        this.target = department;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    private void checkPassword() {
        if (this.password == null || this.passwordRepetition == null) {
            return;
        } else if (!this.password.equals(passwordRepetition)) {
            this.passwordRepetition = null;
        }
    }

    @Override
    public String toString() {
        return "User{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", age=" + age +
                ", target='" + target + '\'' +
                '}';
    }
}
