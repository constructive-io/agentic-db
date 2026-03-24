-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/alterations/alt0000001783
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


COMMENT ON TABLE "agentic_db_app_public".autonomy_record_links IS E'@behavior +manyToMany';

