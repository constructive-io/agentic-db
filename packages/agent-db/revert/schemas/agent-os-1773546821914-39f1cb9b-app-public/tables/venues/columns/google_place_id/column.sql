-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/google_place_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
  DROP COLUMN google_place_id RESTRICT;


