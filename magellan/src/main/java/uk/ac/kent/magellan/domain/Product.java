package uk.ac.kent.magellan.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class Product {
    private String name;

    private String description;

    private String url;

    private String productID;

    private String image;

    private String brand;

    private String itemCondition;

    private String offerPrice;

    private String offerCurrency;

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
}
