-- Deploy: schemas/agent_db_app_public/tables/feedback/indexes/feedbacks_target_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/target_id/column
-- requires: schemas/agent_db_app_public/tables/feedback/indexes/feedbacks_target_type_idx


CREATE INDEX feedbacks_target_id_idx ON agent_db_app_public.feedback USING BTREE ( target_id );

