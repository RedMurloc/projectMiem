package com.example.demo;

import com.example.demo.domain.Message;
import com.example.demo.domain.Role;
import com.example.demo.domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Arrays;
import java.util.HashSet;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MiemApplicationTests {

    @Test
    public void contextLoads() {
    }

    @Test
    public void messageText(){
        Message message = new Message();
        message.setText("testText");
        assertEquals ("testText", message.getText());
    }

    @Test
    public void messageTag(){
        Message message = new Message();
        message.setTag("testTag");
        assertEquals ("testTag", message.getTag());
    }

    @Test
    public void messageId(){
        Message message = new Message();
        message.setId(228);
        assertEquals (new Integer(228), message.getId());
    }

    @Test
    public void userToString() {
        User user = new User();
        user.setId(1);
        user.setUsername("Username");
        user.setActive(true);
        user.setRoles(new HashSet<>(Arrays.asList(Role.ADMIN)));
        assertEquals(user.toString(), "User{" +
                "id=1" +
                ", username=\'Username\'" +
                ", active=true" +
                ", roles=[ADMIN]" +
                '}');
    }

}
