-- Deploy: schemas/agent_db_app_public/tables/contact_links/constraints/contact_links_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/embedding/column


ALTER TABLE "agent_db_app_public".contact_links 
  ADD CONSTRAINT contact_links_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

