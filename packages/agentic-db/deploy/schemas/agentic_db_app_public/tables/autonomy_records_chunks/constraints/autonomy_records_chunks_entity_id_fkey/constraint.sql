-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/constraints/autonomy_records_chunks_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


ALTER TABLE agentic_db_app_public.autonomy_records_chunks 
  ADD CONSTRAINT autonomy_records_chunks_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

