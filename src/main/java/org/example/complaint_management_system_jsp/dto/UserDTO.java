package org.example.complaint_management_system_jsp.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserDTO {
    private Integer id;
    private String username;
    private String password;
    private String email;
    private String jobRole;

    public UserDTO(String name, String password, String job) {
        this.username = name;
        this.password = password;
        this.jobRole = job;
    }
}
