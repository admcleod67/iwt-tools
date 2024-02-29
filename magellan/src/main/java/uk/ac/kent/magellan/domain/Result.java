package uk.ac.kent.magellan.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@Table(name = "result")
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class Result {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long searchId;

    private String name;

    private String description;

    private String url;

    private String productId;

    private String image;

    private String brand;

    private String offerPrice;

    private String offerCurrency;

    private String offerCondition;

    private String offerAvailability;

    private String sellerName;

    private String sellerUrl;

    private String sellerImage;

    private String sellerBestRating;

    private String sellerWorstRating;

    private String sellerRatingCount;

    private String sellerRatingValue;

    private String aggregateBestRating;

    private String aggregateWorstRating;

    private String aggregateRatingCount;

    private String aggregateRatingValue;

    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime timestamp;
}
