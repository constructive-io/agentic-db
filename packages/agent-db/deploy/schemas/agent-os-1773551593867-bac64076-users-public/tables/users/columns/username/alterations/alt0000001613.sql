-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/username/alterations/alt0000001613
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/username/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  ADD CONSTRAINT users_username_chk 
    CHECK (character_length(username) <= 256);

