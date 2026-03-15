-- Deploy: schemas/agent_db_app_public/tables/event_links/constraints/event_links_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/event_links/table
-- requires: schemas/agent_db_app_public/tables/company_links/columns/embedding/column


ALTER TABLE "agent_db_app_public".event_links 
  ADD CONSTRAINT event_links_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

