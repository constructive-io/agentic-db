-- Deploy: schemas/agentic_db_status_public/tables/app_achievements/alterations/alt0000012182
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table


COMMENT ON TABLE agentic_db_status_public.app_achievements IS E'Aggregated user progress for level requirements, tallying the total count; updated via triggers and should not be modified manually';

