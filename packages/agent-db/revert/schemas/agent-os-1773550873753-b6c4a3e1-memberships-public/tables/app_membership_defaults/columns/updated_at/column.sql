-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_membership_defaults 
  DROP COLUMN updated_at RESTRICT;


