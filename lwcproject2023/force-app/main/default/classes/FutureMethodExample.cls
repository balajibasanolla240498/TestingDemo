public class FutureMethodExample 
{
    public FutureMethodExample() 
    {
        takeshower();
        takebrekfast();
        carservice();
        takemovie();
    }
    public static void takeshower()
    {
        system.debug('Take shower');
    }
    public static void takebrekfast()
    {
        system.debug('Take takebrekfast');
    }
    @future
    public static void carservice()
    {
        system.debug('Take carservice');
    }
    public static void takemovie()
    {
        system.debug('Take takemovie');
    }
}