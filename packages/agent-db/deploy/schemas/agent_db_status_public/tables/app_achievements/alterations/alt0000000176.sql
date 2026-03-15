-- Deploy: schemas/agent_db_status_public/tables/app_achievements/alterations/alt0000000176
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table


COMMENT ON TABLE agent_db_status_public.app_achievements IS E'Aggregated user progress for level requirements, tallying the total count; updated via triggers and should not be modified manually';

