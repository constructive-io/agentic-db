-- Deploy: schemas/agent_db_app_public/tables/list_items/columns/ref_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/is_checked/alterations/alt0000004703


ALTER TABLE "agent_db_app_public".list_items 
  ADD COLUMN ref_id uuid;

