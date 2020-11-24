package by.bsu.springrest.entity;

import org.springframework.security.core.GrantedAuthority;

public enum RoleEnum implements GrantedAuthority {
    USER, ADMIN, UNKNOWN;

    @Override
    public String getAuthority() {
        return name();
    }
}
