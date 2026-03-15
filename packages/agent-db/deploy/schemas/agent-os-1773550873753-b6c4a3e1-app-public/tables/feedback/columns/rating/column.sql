-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/feedback/columns/rating/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/feedback/columns/target_id/alterations/alt0000001127


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".feedback 
  ADD COLUMN rating int;

