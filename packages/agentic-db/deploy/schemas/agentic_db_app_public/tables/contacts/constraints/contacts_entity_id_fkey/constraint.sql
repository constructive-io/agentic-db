-- Deploy: schemas/agentic_db_app_public/tables/contacts/constraints/contacts_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding_stale/alterations/alt0000000857


ALTER TABLE "agentic_db_app_public".contacts 
  ADD CONSTRAINT contacts_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

