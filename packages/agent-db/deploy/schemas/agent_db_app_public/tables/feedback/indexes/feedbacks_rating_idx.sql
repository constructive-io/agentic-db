-- Deploy: schemas/agent_db_app_public/tables/feedback/indexes/feedbacks_rating_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/rating/column
-- requires: schemas/agent_db_app_public/tables/feedback/indexes/feedbacks_target_id_idx


CREATE INDEX feedbacks_rating_idx ON "agent_db_app_public".feedback USING BTREE ( rating );

