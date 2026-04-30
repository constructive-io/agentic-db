-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/alterations/alt0000000827
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


COMMENT ON TABLE agentic_db_app_public.deal_notes IS E'@behavior +manyToMany';

