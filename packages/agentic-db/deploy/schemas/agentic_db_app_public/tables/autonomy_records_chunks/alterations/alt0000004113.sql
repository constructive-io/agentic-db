-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/alterations/alt0000004113
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


COMMENT ON TABLE agentic_db_app_public.autonomy_records_chunks IS E'@@chunksOf {"parent_fk": "autonomy_records_id", "parent_table": "autonomy_records"}';

