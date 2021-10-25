BOMB_ACT <- null;

function ActivateBomb()
{
    if(TestValidBombOwner(activator))
    {
        BOMB_ACT = activator;
        EntFireByHandle(self, "FireUser1", "", 0.00, null, null);
    }
}

function CheckBombOwner()
{
    if(TestValidBombOwner(BOMB_ACT) && activator == BOMB_ACT)
    {
        EntFireByHandle(caller, "FireUser1", "", 0.00, null, null);
    }
}

function TestValidBombOwner(handle)
{
    if(handle.IsValid() && handle.GetTeam() == 3 && handle.GetHealth() > 0)
    {
        return true;
    }
    return false;
}
