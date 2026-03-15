-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/is_approved/alterations/alt0000000093


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
  ALTER COLUMN is_approved DROP NOT NULL;


