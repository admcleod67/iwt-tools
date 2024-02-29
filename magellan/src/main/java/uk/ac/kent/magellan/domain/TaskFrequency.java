package uk.ac.kent.magellan.domain;

import java.util.Arrays;

public enum TaskFrequency {
    DAILY("Daily", 1),
    WEEKLY("Weekly", 7),
    FORTNIGHTLY("Fortnightly", 14),
    MONTHLY("Monthly", 30);

    final String displayName;

    final private int days;

    TaskFrequency(final String displayName, final int days) {
        this.displayName = displayName;
        this.days = days;
    }

    public int getDays() {
        return days;
    }

    public String getDisplayName() {
        return displayName;
    }

    public static TaskFrequency fromDisplayName(final String displayName) {
        return (displayName == null) ? null : Arrays.stream(TaskFrequency.values())
                .filter(taskFrequency -> taskFrequency.getDisplayName().equalsIgnoreCase(displayName))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("No matching task frequency for '" + displayName + "'"));
    }
}
