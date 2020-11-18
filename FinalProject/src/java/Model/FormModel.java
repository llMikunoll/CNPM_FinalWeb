/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author admin
 */
public class FormModel {

    public String name;
    public int phone;
    public String typeRoom;
    public int numRoom;
    public Date day;
    public int hour;
    public int min;
    public String time;

    public FormModel(String name, int phone, String typeRoom, int numRoom, Date day, int hour, int min, String time) {
        this.name = name;
        this.phone = phone;
        this.typeRoom = typeRoom;
        this.numRoom = numRoom;
        this.day = day;
        this.hour = hour;
        this.min = min;
        this.time = time;
    }
    
    public FormModel(){}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getTypeRoom() {
        return typeRoom;
    }

    public void setTypeRoom(String typeRoom) {
        this.typeRoom = typeRoom;
    }

    public int getNumRoom() {
        return numRoom;
    }

    public void setNumRoom(int numRoom) {
        this.numRoom = numRoom;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }

    public int getHour() {
        return hour;
    }

    public void setHour(int hour) {
        this.hour = hour;
    }

    public int getMin() {
        return min;
    }

    public void setMin(int min) {
        this.min = min;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
   
    
    
}
