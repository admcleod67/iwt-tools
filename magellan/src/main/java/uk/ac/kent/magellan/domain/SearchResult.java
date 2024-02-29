package uk.ac.kent.magellan.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.beans.factory.annotation.Value;

import java.time.LocalDateTime;

public interface SearchResult {
    Long getId();

    String getName();

    @Value("#{target.seller_name}")
    String getSellerName();

    String getSiteName();

    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    LocalDateTime getTimestamp();
}
