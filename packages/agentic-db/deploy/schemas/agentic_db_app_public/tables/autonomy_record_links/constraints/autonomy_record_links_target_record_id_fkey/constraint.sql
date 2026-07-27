-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/constraints/autonomy_record_links_target_record_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table


ALTER TABLE agentic_db_app_public.autonomy_record_links 
  ADD CONSTRAINT autonomy_record_links_target_record_id_fkey 
    FOREIGN KEY(target_record_id) 
    REFERENCES agentic_db_app_public.autonomy_records (id) 
    ON DELETE CASCADE;

