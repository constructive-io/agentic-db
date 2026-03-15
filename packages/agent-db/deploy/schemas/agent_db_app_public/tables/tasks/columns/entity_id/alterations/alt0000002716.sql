-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/entity_id/alterations/alt0000002716
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agent_db_app_public".tasks 
  ALTER COLUMN entity_id SET NOT NULL;

