package uk.ac.kent.magellan.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.apache.commons.lang3.StringUtils;

import java.time.LocalDateTime;

@Entity
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class TaxonomyResult {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long taxonomySearchId;

    private String name;

    private String details;

    private String redListStatus;

    private String vernacularName;

    private String family;

    private String taxonomyOrder;

    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime timestamp;

    public boolean isEmpty() {
        return StringUtils.isAllBlank(
                this.getName(),
                this.getDetails(),
                this.getRedListStatus(),
                this.getVernacularName(),
                this.getFamily(),
                this.getTaxonomyOrder());
    }
}
