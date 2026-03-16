-- Deploy: schemas/agent_db_app_public/tables/venue_images/alterations/alt0000001844
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_images/table
-- requires: schemas/agent_db_app_public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".venue_images 
  DISABLE ROW LEVEL SECURITY;

