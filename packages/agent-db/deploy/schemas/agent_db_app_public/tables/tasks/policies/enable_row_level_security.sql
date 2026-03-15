-- Deploy: schemas/agent_db_app_public/tables/tasks/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agent_db_app_public".tasks 
  ENABLE ROW LEVEL SECURITY;

