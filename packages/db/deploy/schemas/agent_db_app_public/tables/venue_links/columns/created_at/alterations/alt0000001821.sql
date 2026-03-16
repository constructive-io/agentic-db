-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/created_at/alterations/alt0000001821
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/venue_links/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".venue_links 
  ALTER COLUMN created_at SET NOT NULL;

