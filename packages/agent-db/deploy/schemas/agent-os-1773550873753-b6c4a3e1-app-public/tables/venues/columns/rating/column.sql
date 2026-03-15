-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/rating/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/google_place_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venues 
  ADD COLUMN rating numeric;

