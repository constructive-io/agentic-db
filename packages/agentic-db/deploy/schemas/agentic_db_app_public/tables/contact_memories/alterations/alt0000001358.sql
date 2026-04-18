-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/alterations/alt0000001358
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON TABLE agentic_db_app_public.contact_memories IS E'@behavior +manyToMany';

