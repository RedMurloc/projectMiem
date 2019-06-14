package com.example.demo.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.List;
import java.util.Objects;
import java.util.Set;

@Entity(name = "file_data")
public class FileData {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    private String name;

    private Integer userId;

    private List<String> columns;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public List<String> getColumns() {
        return columns;
    }

    public void setColumns(List<String> columns) {
        this.columns = columns;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        FileData fileData = (FileData) o;
        return Objects.equals(getId(), fileData.getId()) &&
            Objects.equals(getName(), fileData.getName()) &&
            Objects.equals(getUserId(), fileData.getUserId());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getName(), getUserId());
    }

    @Override
    public String toString() {
        return "FileData{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", userId=" + userId +
            '}';
    }
}
