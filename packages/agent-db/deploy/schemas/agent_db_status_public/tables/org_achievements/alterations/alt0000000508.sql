-- Deploy: schemas/agent_db_status_public/tables/org_achievements/alterations/alt0000000508
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table


COMMENT ON TABLE agent_db_status_public.org_achievements IS E'Aggregated user progress for level requirements, tallying the total count; updated via triggers and should not be modified manually';

