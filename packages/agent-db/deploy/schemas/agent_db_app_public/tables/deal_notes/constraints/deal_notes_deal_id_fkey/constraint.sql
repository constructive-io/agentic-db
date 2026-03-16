-- Deploy: schemas/agent_db_app_public/tables/deal_notes/constraints/deal_notes_deal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deal_notes/table
-- requires: schemas/agent_db_app_public/tables/company_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".deal_notes 
  ADD CONSTRAINT deal_notes_deal_id_fkey 
    FOREIGN KEY(deal_id) 
    REFERENCES "agent_db_app_public".deals (id) 
    ON DELETE CASCADE;

