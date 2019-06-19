package com.example.demo.domain.dto;

import java.util.List;

public class DiagramDto {

    private Long id;

    private List<String> data;

    private String typeDiagram;

    public DiagramDto(Long id, String typeDiagram) {
        this.id = id;
        this.typeDiagram = typeDiagram;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<String> getData() {
        return data;
    }

    public void setData(List<String> data) {
        this.data = data;
    }

    public String getTypeDiagram() {
        return typeDiagram;
    }

    public void setTypeDiagram(String typeDiagram) {
        this.typeDiagram = typeDiagram;
    }
}
