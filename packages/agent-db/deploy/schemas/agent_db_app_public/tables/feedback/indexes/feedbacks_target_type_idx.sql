-- Deploy: schemas/agent_db_app_public/tables/feedback/indexes/feedbacks_target_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/target_type/column
-- requires: schemas/agent_db_app_public/tables/prompts/indexes/prompts_is_active_idx


CREATE INDEX feedbacks_target_type_idx ON "agent_db_app_public".feedback USING BTREE ( target_type );

