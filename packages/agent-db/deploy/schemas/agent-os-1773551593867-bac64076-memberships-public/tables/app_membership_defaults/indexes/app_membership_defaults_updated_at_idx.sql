-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/indexes/app_membership_defaults_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/columns/updated_at/column


CREATE INDEX app_membership_defaults_updated_at_idx ON "agent-os-1773551593867-bac64076-memberships-public".app_membership_defaults ( updated_at );

