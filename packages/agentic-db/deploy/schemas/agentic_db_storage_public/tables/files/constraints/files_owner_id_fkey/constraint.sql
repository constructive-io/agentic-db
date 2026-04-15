-- Deploy: schemas/agentic_db_storage_public/tables/files/constraints/files_owner_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_storage_public/tables/files/table


ALTER TABLE agentic_db_storage_public.files 
  ADD CONSTRAINT files_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

