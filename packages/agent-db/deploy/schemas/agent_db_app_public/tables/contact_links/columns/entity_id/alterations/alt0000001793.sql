-- Deploy: schemas/agent_db_app_public/tables/contact_links/columns/entity_id/alterations/alt0000001793
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/contact_links/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/tags/columns/usage_count/alterations/alt0000001789


ALTER TABLE "agent_db_app_public".contact_links 
  ALTER COLUMN entity_id SET NOT NULL;

