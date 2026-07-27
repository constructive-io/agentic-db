-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table


COMMENT ON TABLE agentic_db_app_public.autonomy_record_links IS E'@behavior +manyToMany';

