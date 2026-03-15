-- Deploy: schemas/agent_db_app_public/tables/event_links/columns/updated_at/alterations/alt0000004189
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_links/table
-- requires: schemas/agent_db_app_public/tables/event_links/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/event_links/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".event_links 
  ALTER COLUMN updated_at SET NOT NULL;

