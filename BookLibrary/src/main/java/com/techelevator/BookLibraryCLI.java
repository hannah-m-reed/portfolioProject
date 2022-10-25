package com.techelevator;

import org.apache.commons.dbcp2.BasicDataSource;



public class BookLibraryCLI {

    public BookLibraryCLI(BasicDataSource dataSource) {
    }

    public static void main(String[] args){
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/BookLibrary");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");

        BookLibraryCLI bookLibraryCLI = new BookLibraryCLI(dataSource);
        bookLibraryCLI.run();
    }

    private void run() {

    }
}
