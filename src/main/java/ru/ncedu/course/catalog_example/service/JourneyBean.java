package ru.ncedu.course.catalog_example.service;


import javax.ejb.Stateful;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@Stateful
@SessionScoped
public class JourneyBean implements Serializable {

    private final static Logger LOGGER = Logger.getLogger(JourneyBean.class.getName());

    private List<String> stringListURL = new ArrayList<>();

    public void addUrl(String url) {
        stringListURL.add(url);
        LOGGER.info("URL added: " + url);
    }
    public List<String> getUrl() {
        return stringListURL;
    }

    public void cleanUrlList() {
        stringListURL.clear();
    }

}
