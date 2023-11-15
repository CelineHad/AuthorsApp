package com.authors.enums;

public enum FieldOfStudy {
    Maths(1, "Maths"),
    Science(2, "Science"),
    biology(3, "biology"),
    IT(4, "IT");
    private final int index;
    private final String majorName;

    FieldOfStudy(int index, String majorName) {
        this.index = index;
        this.majorName = majorName;
    }

    public int getIndex() {
        return index;
    }

    public String getMajorName() {
        return majorName;
    }

    public static FieldOfStudy getByIndex(int index) {
        for (FieldOfStudy major : values()) {
            if (major.getIndex() == index) {
                return major;
            }
        }
        throw new IllegalArgumentException("Invalid index: " + index);
    }
}